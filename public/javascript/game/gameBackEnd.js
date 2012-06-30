//Global functions
log = function (s)
{
	$('#statusbox').val($('#statusbox').val() + s);
}

clearStatusBox = function ()
{
	$('#statusbox').val('');
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
	}
	ws.onmessage = processMessage;
}

function processGameMessage(s,msgUID,msgUserName)
{
	switch(s.type)
	{
	case "setLibraryNumber":
		if (msgUID==myUID) stage.get("#libraryCountText")[0].attrs.text = s.body;
		else stage.get("#oppoLibraryCountText")[0].attrs.text=s.body;
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
					init_status = true;
				}
				else if (bothPlayersConnected==1)
				{
					if (msg.body=="ready"){
						bothPlayersConnected++;
						init_status = true;
						log("Both players ready, you can start to draw 7 cards.\n\n");
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
		case "game":
			processGameMessage(msg.body,msg.uid,msg.username);
			break;
		default:
	}
}

function chooseColor(l)
//when user clicks on any of the five color symbols
{
	var gameMsg = new GameMessage("chooseColor",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}

function removeColor(l)
//when user clicks on the tick on the five color symbols, trying to remove it
{
	var gameMsg = new GameMessage("removeColor",myUsername,myUID,l)
	var msg = new Message("game",myUsername,myUID,JSON.stringify(gameMsg));
	ws.send(JSON.stringify(msg));
}