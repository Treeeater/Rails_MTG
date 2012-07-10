//Global functions
log = function (s)
{
	$('#statusbox').val($('#statusbox').val() + s);
	var textArea = document.getElementById('statusbox');
	textArea.scrollTop = textArea.scrollHeight;
}

clearStatusBox = function ()
{
	$('#statusbox').val('');
}

function testAndSendChatMsg(e)
{
	if (e.keyCode==13) sendChatMsg();
}

function sendChatMsg()
{
	var msg = new Message("chat",myUsername,myUID,$('#chatInput').val());
	ws.send(JSON.stringify(msg));
}

GameMessage = function(type, username, uid, body)
{
	this.type = type;
	this.username = username;
	this.uid = uid;
	this.body = body;
}

Message = function(type, username, uid, body)
{
	this.type = type;
	this.username = username;
	this.uid = uid;
	this.body = body;
}

function handShake()
{
	//var stringMSGObj = {"cards":cards,"sbCards":sbCards,"L1":plainsCount,"L2":islandCount,"L3":swampCount,"L4":mountainCount,"L5":forestCount};
	//var msg = new Message("init",myUsername,myUID,JSON.stringify(stringMSGObj));
	var msg = new Message("init",myUsername,myUID,"");
	ws.send(JSON.stringify(msg));
}

function initBackEndJS()
{
	$('#chatInput').attr('disabled','disabled');
	//Global vars
	myUsername = $('#account').attr('uname');
	myUID = $('#account').attr('uid');
	url = document.URL;
	isGameHost = (myUID==(url.substr(url.indexOf('game/')+3,url.length)));
	bothPlayersConnected = 0;
	init_status = false;

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
		$('#chatInput').attr('disabled','disabled');
	}
	ws.onmessage = processMessage;
}

function processGameMessage(s,msgUID,msgUserName)
{
	switch(s.type)
	{
	case "setLibraryNumber":
		if (s.uid==myUID) stage.get("#libraryCountText")[0].setText(s.body.toString());
		else stage.get("#oppoLibraryCountText")[0].setText(s.body.toString());
		FixedLayer.draw();
		break;
	case "chooseColor":
		log(s.username + " chose " + s.body + ".\n\n");
		chooseColorVisual(s.body);
		break;
	case "removeColor":
		log(s.username + " removed " + s.body + ".\n\n");
		removeColorVisual(s.body);
		break;
	case "choosePhase":
		log(s.username + " set the current phase to " + s.body.substr(0,s.body.length-3) + ".\n\n");
		choosePhaseVisual(s.body);
		break;
	case "adjustLifeTotal":
		log(s.username + " changed their life total to " + s.body + " life.\n\n");
		adjustLifeTotalVisual(s.body, s.uid == myUID);
		break;
	case "drawCards":
		drawCardsVisual(s);
		break;
	case "setOppoHandNumber":
		adjustOppoHandCardVisual(s.body)
		break;
	case "putCardFromHandOntoStack":
		card = s.body;
		if (s.uid==myUID) handCardDisplayer.number--;
		log(s.username + " put " + card.cardName + " onto the stack.\n\n");
		displayCard(card,s.uid == myUID);
		break;
	case "putCardFromHandOntoBattlefield":
		card = s.body;
		if (s.uid==myUID) handCardDisplayer.number--;
		log(s.username + " put " + card.cardName + " onto the battlefield.\n\n");
		displayCard(card,s.uid == myUID);
		break;
	case "dragEndBattlefieldCard":
		card = s.body;
		dragEndBattlefieldCardVisual(card);
		break;			
	case "displayCard":
		//used to recover the game state on reconnection
		var cards = s.body;
		var i = 0;
		for (i = 0; i<cards.length; i++)
		{
			displayCard(cards[i],cards[i].ownerUID == myUID);
		}
		break;
	default:
	}
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
					log("Both players ready, you can start to draw 7 cards.\n\n");
					$('#chatInput').removeAttr('disabled');
					init_status = true;
				}
				else if (bothPlayersConnected==1)
				{
					if (msg.body=="ready"){
						bothPlayersConnected++;
						init_status = true;
						log("Both players ready, you can start to draw 7 cards.\n\n");
						$('#chatInput').removeAttr('disabled');
						$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
					}
					else {log("Please wait for your opponent to connect to the game server.\n\n");}
				}
			}
			else{
				bothPlayersConnected++;
				$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
				if (bothPlayersConnected==2)
				{
					if (init_status==false)
					{
						log("Both players ready, you can start to draw 7 cards.\n\n");
						$('#chatInput').removeAttr('disabled');
						init_status = true;
					}
					else
					{
						//your opponent has just reconnected.
						log("Just FYI your opponent has reconnected. Enjoy your game.\n\n");
						$('#chatInput').removeAttr('disabled');
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
			log("Just FYI your opponent has disconnected. However, as long as you don't disconnect, game state is preserved. Game will be automatically continued after your opponent reconnects.\n\n");
			$('#chatInput').attr('disabled','disabled');
			break;
		case "game":
			processGameMessage(msg.body,msg.uid,msg.username);
			break;
		case "chat":
			log(msg.username + ": " + msg.body+"\n\n");
			if (msg.uid == myUID) $('#chatInput').val("");
		default:
	}
}

function chooseColorBE(l)
//when user clicks on any of the five color symbols
{
	var gameMsg = new GameMessage("chooseColor",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function choosePhaseBE(l)
//when user clicks on any of the phase boxes
{
	var gameMsg = new GameMessage("choosePhase",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function removeColorBE(l)
//when user clicks on the tick on the five color symbols, trying to remove it
{
	var gameMsg = new GameMessage("removeColor",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function adjustLifeTotalBE(l)
//Adjust life total, argument can be negative
{
	var gameMsg = new GameMessage("adjustLifeTotal",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function drawCardsBE(l)
{
	var gameMsg = new GameMessage("drawCards",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function playHandCardBE(cardID)
{
	var gameMsg = new GameMessage("playHandCard",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function putCardOntoBattlefieldBE(cardID)
{
	var gameMsg = new GameMessage("putCardOntoBattlefield",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function putCardOntoTopOfLibraryBE(cardID)
{
	var gameMsg = new GameMessage("putCardOntoTopOfLibrary",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function discardBE(cardID)
{
	var gameMsg = new GameMessage("discard",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function exileBE(cardID)
{
	var gameMsg = new GameMessage("exile",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function revealBE(cardID)
{
	var gameMsg = new GameMessage("reveal",myUsername,myUID,cardID)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function dragEndBattlefieldCardBE(x,y,cardID)
{
	var gameMsg = new GameMessage("dragEndBattlefieldCard",myUsername,myUID,{"x":x,"y":y,"cardID":cardID})
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}
