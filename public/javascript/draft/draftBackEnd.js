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
	var allPlayersConnected = 0;
	var allPlayersReady = 0;
	var ISubmitted = false;
	var OppoSubmitted = false;
	var redirect_URL = "";
	var init_status = false;
	var url = document.URL;
	isGameHost = (myUID==(url.substr(url.indexOf('ft/')+3,url.length)));
	Message = function(type, username, uid, body)
	{
		this.type = type;
		this.username = username;
		this.uid = uid;
		this.body = body;
	}

	log = function (s)
	{
		console.log(s);
	}

	function handShake()
	{
		var msg = new Message("init",myUsername,myUID,"");
		ws.send(JSON.stringify(msg));
	}

	function initializeCommunication()
	{
		ws = new WebSocket("ws://"+hostServerDomain+":"+gamePort+"/");
		ws.onopen = function(){
			log("Game server connected.\n\n");
			handShake();
			//ws.close();
   		}
		ws.onclose = function(){
			log("Game server disconnected.\n\n");
			$("#roundTablePlayers0").attr("src",'/assets/lobby/broken.png');
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
	
	submitCard = function(card)
	{
		var msg = new Message("submitCard",myUsername,myUID,card.card);
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
		var msg = new Message("verifyDeck",myUsername,myUID,JSON.stringify(toSubmit));
		ws.send(JSON.stringify(msg));
		log("Verifying the deck, waiting for server reply...\n\n");
	}
	
	function processMessage(s)
	{
		msg = JSON.parse(s.data);
		var d = new Date();
		time = d.toTimeString();
		switch (msg.type)
		{
			case "init":
				thisPlayerSeat = msg.body.split("/")[0];
				totalPlayerNo = msg.body.split("/")[1];
				stage.get("#roundTablePlayers"+thisPlayerSeat)[0].setFill('green');
				stage.get("#roundTablePlayers"+thisPlayerSeat)[0].on("mouseover",showPlayerName.bind(window, msg.username, (120 + 95 * Math.sin(parseInt(thisPlayerSeat)*Math.PI/4)), (800 - 95 * Math.cos(parseInt(thisPlayerSeat)*Math.PI/4)) ));
				stage.get("#roundTablePlayers"+thisPlayerSeat)[0].on("mouseout",hidePlayerName);
				layer.draw();
				if (msg.body=="ready"){
					init_status = true;
					$("#roundTable").attr("src",'/assets/lobby/connected.jpg');
				}
				break;
			case "disconnect":
				// this is gotta be opponent disconnect, so no worries.
				stage.get("#roundTablePlayers"+msg.body)[0].setFill('red');
				layer.draw();
				log("Just FYI your opponent has disconnected, you can continue deck building regardless. He/She can resume deck building once reconnected.\n\n")
				break;
			case "error":
				log('Error : ' + msg.body + '\n\n');
			case "info":
				log('Info : ' + msg.body + '\n\n');
			case "nextPack":
				var c = JSON.parse(msg.body);
				var i = 0;
				sbCards = new Array();
				totalSelectionCardNumber = 0;
				for (i = 0; i<c.length; i++)
				{
					var card = new Card(i+15*pickNumber+100,c[i]);			//very important not to be confused with the selectedCards pool
					sbCards.push(card);
					totalSelectionCardNumber++;
				}
				log('Info : packs received, rendering card images...\n\n');
				refreshSelectionDisplay();		//hand control over to sealedUI.js
				break;
			case "selectedCards":
				var c = JSON.parse(msg.body);
				var i = 0;
				mbCards = new Array();
				totalSelectedCardNumber = 0;
				for (i = 0; i<c.length; i++)
				{
					var card = new Card(i,c[i]);
					mbCards.push(card);
					totalSelectedCardNumber++;
				}
				log('Info : selected cards received, rendering card images...\n\n');
				refreshSelectedDisplay();		//hand control over to sealedUI.js
				break;
			case "ackSubmitCard":
				showSubmissionACKBox();
				break;
			case "verified":
				if (msg.uid == myUID)
				{
					//actually submit the deck
					var xhr = new XMLHttpRequest();
					xhr.open('POST', hostServerAddress+"/users/submitDeck", false);  		//hostServerAddress is derived from index.html.erb, must
					//use this under rails framework.
					log("Sending initialize game command...\n\n");
					xhr.setRequestHeader('Content-Type','application/json')
					POSTload = {"cards":prepareCardsToSend(mbCards),"sbCards":prepareCardsToSend(sbCards),"L1":(stage.get("#plainsNumber").length==0)?0:stage.get("#plainsNumber")[0].attrs.number.toString(),"L2":(stage.get("#islandNumber").length==0)?0:stage.get("#islandNumber")[0].attrs.number.toString(),"L3":(stage.get("#swampNumber").length==0)?0:stage.get("#swampNumber")[0].attrs.number.toString(),"L4":(stage.get("#mountainNumber").length==0)?0:stage.get("#mountainNumber")[0].attrs.number.toString(),"L5":(stage.get("#forestNumber").length==0)?0:stage.get("#forestNumber")[0].attrs.number.toString()}
					xhr.send(JSON.stringify(POSTload));
					if (xhr.status == 200) {
						log("Deck submitted, waiting to start the game...\n\n");
						var msg = new Message("submitDeck",myUsername,myUID,"");
						ws.send(JSON.stringify(msg));
					}
				}
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
				/*$('#hiddenInputMB')[0].value=prepareCardsToSend(mbCards);
				$('#hiddenInputSB')[0].value=prepareCardsToSend(sbCards);
				if (stage.get("#plainsNumber").length>0) $('#hiddenInputL1')[0].value=stage.get("#plainsNumber")[0].attrs.number.toString();
				if (stage.get("#islandNumber").length>0) $('#hiddenInputL2')[0].value=stage.get("#islandNumber")[0].attrs.number.toString();
				if (stage.get("#swampNumber").length>0) $('#hiddenInputL3')[0].value=stage.get("#swampNumber")[0].attrs.number.toString();
				if (stage.get("#mountainNumber").length>0) $('#hiddenInputL4')[0].value=stage.get("#mountainNumber")[0].attrs.number.toString();
				if (stage.get("#forestNumber").length>0) $('#hiddenInputL5')[0].value=stage.get("#forestNumber")[0].attrs.number.toString();
				$('#hiddenForm')[0].action=redirect_URL;
				$('#hiddenForm')[0].submit();*/
				window.location = redirect_URL;				//get request.
			default:
		}
	}

	initializeCommunication();
}

window.addEventListener("load",start);
