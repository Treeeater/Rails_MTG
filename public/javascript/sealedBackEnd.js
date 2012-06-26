Card = function(uid,card){
	this.uid = uid;
	this.card = card;
	this.displayOrder = 0;
};

cards = new Array();
sbCards = new Array();
mbCards = new Array();
displayOrderArray = new Array();
//sbDisplayOrderArray = new Array();
//mbDisplayOrderArray = new Array();
gotpacks = false;
isGameHost = false;

function prepareCardsToSend(cards)
{
	var i;
	var returnString = "";
	for (i in cards)
	{
		returnString += (cards[i].card.expansion.toString() + "/" + cards[i].card.idInSet.toString()+"+");
	}
	return returnString;
}

function start(){
	myUsername = $('#account').attr('uname');
	myUID = $('#account').attr('uid');
	var bothPlayersConnected = 0;
	var bothPlayersReady = 0;
	var ISubmitted = false;
	var OppoSubmitted = false;
	var redirect_URL = "";
	var init_status = false;
	var url = document.URL;
	isGameHost = (myUID==(url.substr(url.indexOf('ed/')+3,url.length)));
	Message = function(type, username, uid, body)
	{
		this.type = type;
		this.username = username;
		this.uid = uid;
		this.body = body;
	}

	log = function (s)
	{
		$('#statusbox').val($('#statusbox').val() + s);
	}

	function clearStatusBox()
	{
		$('#statusbox').val('');
	}

	function handShake()
	{
		var msg = new Message("init",myUsername,myUID,"");
		ws.send(JSON.stringify(msg));
	}

	function initializeCommunication()
	{
		clearStatusBox();
		ws = new WebSocket("ws://"+hostServerDomain+":"+gamePort+"/");
		ws.onopen = function(){
			log("Game server connected.\n\n");
			handShake();
			//ws.close();
   		}
		ws.onclose = function(){
			log("Game server disconnected.\n\n");
			$("#status_oppo_img").attr("src",'/assets/lobby/broken.png');
			$("#status_me_img").attr("src",'/assets/lobby/broken.png');
		}
		ws.onmessage = processMessage;
	}

	initPacks = function()
	{

		if (bothPlayersConnected != 2)
		{
			log("The session is not fully initialized for either you or your opponent, please wait for the faces to turn green before clicking this button!\n\n");
			return false;
		}
		//both players ready.
		if (gotpacks) {log("Sorry man, you already got your packs, hitting me doesn't give you extra cards!\n\n");return;};
		var msg = new Message("initPacks",myUsername,myUID,"");
		ws.send(JSON.stringify(msg));
	}
	
	submitDeck = function()
	{
		if (mbCards==undefined)
		{
			log("Do you even HAVE a main board??\n\n");
			return;
		}
		toSubmit = new Array();
		for (i=0;i<mbCards.length;i++)
		{
			toSubmit.push(mbCards[i].card.expansion + "/" + mbCards[i].card.idInSet);
		}
		cardsCount = toSubmit.length;
		if (stage.get("#plainsNumber")[0])
		{
			toSubmit.push("plains" + "/" + stage.get("#plainsNumber")[0].attrs.number.toString());
			cardsCount+=parseInt(stage.get("#plainsNumber")[0].attrs.number);
		}
		if (stage.get("#islandNumber")[0])
		{
			toSubmit.push("island" + "/" + stage.get("#islandNumber")[0].attrs.number.toString());
			cardsCount+=parseInt(stage.get("#islandNumber")[0].attrs.number);
		}
		if (stage.get("#swampNumber")[0])
		{
			toSubmit.push("swamp" + "/" + stage.get("#swampNumber")[0].attrs.number.toString());
			cardsCount+=parseInt(stage.get("#swampNumber")[0].attrs.number);
		}
		if (stage.get("#mountainNumber")[0])
		{
			toSubmit.push("mountain" + "/" + stage.get("#mountainNumber")[0].attrs.number.toString());
			cardsCount+=parseInt(stage.get("#mountainNumber")[0].attrs.number);
		}
		if (stage.get("#forestNumber")[0])
		{
			toSubmit.push("forest" + "/" + stage.get("#forestNumber")[0].attrs.number.toString());
			cardsCount+=parseInt(stage.get("#forestNumber")[0].attrs.number);
		}
		if (cardsCount < 40)
		{
			log("please make sure your deck has at least 40 cards in the main board before submitting your deck.\n\n");
			return;
		}
		var msg = new Message("submitDeck",myUsername,myUID,JSON.stringify(toSubmit));
		ws.send(JSON.stringify(msg));
		log("Submitted the deck, waiting for server reply...\n\n");
	}
	
	function processMessage(s)
	{
		msg = JSON.parse(s.data);
		var d = new Date();
		time = d.toTimeString();
		switch (msg.type)
		{
			case "init":
				if (msg.uid == myUID){
					bothPlayersConnected++;
					$("#status_me_img").attr("src",'/assets/lobby/connected.jpg');
					if (bothPlayersConnected==2)
					{
						log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
						init_status = true;
					}
					else if (bothPlayersConnected==1)
					{
						if (msg.body=="ready"){
							bothPlayersConnected++;
							init_status = true;
							log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
							$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
						}
						else {log("Please wait for your opponent to finish initializing.\n\n");}
					}
				}
				else{
					bothPlayersConnected++;
					$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
					if (bothPlayersConnected==2)
					{
						if (init_status==false)
						{
							log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
							init_status = true;
						}
						else
						{
							//your opponent has just reconnected.
							log("Just FYI your opponent has reconnected. Enjoy your game.\n\n");
						}
					}
					else if (bothPlayersConnected==1)
					{
						log("Your session is not yet fully initialized, please wait.\n\n");
					}
				}
				break;
			case "disconnect":
				// this is gotta be opponent disconnect, so no worries.
				bothPlayersConnected--;
				$("#status_oppo_img").attr("src",'/assets/lobby/broken.png');
				log("Just FYI your opponent has disconnected, you can continue deck building regardless. He/She can resume deck building once reconnected.\n\n")
				break;
			case "error":
				log('Error : ' + msg.body + '\n\n');
			case "info":
				log('Info : ' + msg.body + '\n\n');
			case "cards":
				var c = JSON.parse(msg.body);
				var i = 0;
				//global var 'cards' holding all cards
				for (i = 0; i<c.length; i++)
				{
					var card = new Card(i,c[i]);
					cards.push(card);
				}
				totalCardNumber = cards.length;
				gotpacks = true;
				log('Info : packs received, rendering card images...\n\n');
				initCardDisplay();		//hand control over to sealedUI.js
				break;
			case "submitted":
				if (msg.uid == myUID)
				{
					ISubmitted = true;
					log('Server ACK OK. If you are the last player to submit the deck, the game should start right away.\n\n');
				}
				else{
					OppoSubmitted = true;
					log('Opponent submitted their deck. If you already submitted your deck, the game should start right away.\n\n');
				}
				if (ISubmitted&&OppoSubmitted&&isGameHost)
				{
					var xhr = new XMLHttpRequest();
					xhr.open('GET', hostServerAddress+"/game/new", false);  		//hostServerAddress is derived from index.html.erb, must
					//use this under rails framework.
					log("Sending initialize game command...\n\n");
					xhr.send();
					if (xhr.status == 200) {
						log("Game server initialized, starting the game...\n\n");
						setTimeout('message = new Message("startGame", myUsername, myUID, "");ws.send(JSON.stringify(message));',2000);
					}
				}
				break;
			case "startGame":
				redirect_URL = "http://"+document.domain+":"+window.location.port+"/"+msg.body;
				$('#hiddenInputMB')[0].value=prepareCardsToSend(mbCards);
				$('#hiddenInputSB')[0].value=prepareCardsToSend(sbCards);
				if (stage.get("#plainsNumber").length>0) $('#hiddenInputL1')[0].value=stage.get("#plainsNumber")[0].attrs.number.toString();
				if (stage.get("#islandNumber").length>0) $('#hiddenInputL2')[0].value=stage.get("#islandNumber")[0].attrs.number.toString();
				if (stage.get("#swampNumber").length>0) $('#hiddenInputL3')[0].value=stage.get("#swampNumber")[0].attrs.number.toString();
				if (stage.get("#mountainNumber").length>0) $('#hiddenInputL4')[0].value=stage.get("#mountainNumber")[0].attrs.number.toString();
				if (stage.get("#forestNumber").length>0) $('#hiddenInputL5')[0].value=stage.get("#forestNumber")[0].attrs.number.toString();
				$('#hiddenForm')[0].action=redirect_URL;
				$('#hiddenForm')[0].submit();
			default:
		}
	}

	initializeCommunication();
}

window.addEventListener("load",start);
