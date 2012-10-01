(function (){
	chatServerConnected = false;
	connecting = false;
	games = new Array();					//Array of Games
	initialization = true;					//boolean to record init status
	uid = $('#account').attr('uid');
	username = $('#account').attr('uname');
	$('#chatInput').attr('disabled','disabled');
	window.addEventListener('load', clearChatBox, false);			//FF does not clear chatbox after refresh, this is a work around.
	host = hostServerAddress;
	lobbyServerHost = "ws://"+hostServerDomain+":"+gamePort+"/";
})();

function keys(obj)
{
    var keys = [];

    for(var key in obj)
    {
        if(obj.hasOwnProperty(key))
        {
            keys.push(key);
        }
	}
    return keys;
}

function log(s)
{
	$('#chatbox').val($('#chatbox').val() + s);
	var textArea = document.getElementById('chatbox');
	textArea.scrollTop = textArea.scrollHeight;
}

function Message(type, username, body, uid)
{
	this.type = type;
	this.username = username;
	this.body = body;
	this.uid = uid;
}

function Game(hostName, hostUID, players, type)
{
	this.hostName = hostName;
	this.hostUID = hostUID;
	this.players = players;
	this.type = type;
}

function connectChatServer()
{
	if (connecting||chatServerConnected)
	{
		alert("already connecting or connected! don't click this twice!")
		return;
	}
	log('Connecting to chat server...\n');
	connecting = true;
	chatws = new WebSocket(lobbyServerHost);
	chatws.onopen = function(){  
		initChat();
    }
	chatws.onclose = function(){
		closeConnection();
	}
	setTimeout("timeOut();",3000);
}

function initChat()
{
	log('Server connected!\n');
	chatServerConnected = true;
	connecting = false;
	var message = new Message("login", username, "", uid);
	chatws.send(JSON.stringify(message));
	$('#status_img').attr('src','/assets/lobby/connected.jpg');
	$('#chatInput').removeAttr('disabled');
	$('#chatInput').val('');
	chatws.onmessage = processMessage;
	log('Retrieving users list...\n');
}

function closeConnection()
{
	if (!chatServerConnected) return;
	chatServerConnected = false;
	connecting = false;
	initialization = true;
	$('#status_img').attr('src','/assets/lobby/broken.png');
	$("#createStartGame").val("Create a game!");
	$("#createStartGame").attr('onclick', 'createGame()');
	clearLists();
}

function clearLists()
{
	$("#userslist").html("");
	$("#gameslist").html("");
}
function timeOut()
{
	if (chatServerConnected) return;
	connecting = false;
	errorMessage = "Failed to connect to remote chat server, try again later.\n"
	log(errorMessage);
}

function testAndSend(e)
{
	if (e.keyCode==13){
		sendChatMsg($('#chatInput').val());
	}
}
function sendChatMsg(s)
{
	//post this to textarea first
	//$('#chatbox').val($('#chatbox').val()+username+" : "+s+"\n");
	//then push this to chat server
	msg = new Message("message",username,s,uid);
	chatws.send(JSON.stringify(msg));
	$('#chatInput').val("");
	//should setup a callback to remove 'sending...' after receiving response.
};

function clearChatBox()
{
	$('#chatbox').val("");	
}

function createGame()
{
	var draftOrSealed = confirm("Press OK for a draft game, press cancel for a sealed game.");
	if (draftOrSealed) message = new Message("createDraftGame", username, "", uid);
	else message = new Message("createSealedGame", username, "", uid);
	chatws.send(JSON.stringify(message));
	$("#createStartGame").val("Start game!");
	if (draftOrSealed) $("#createStartGame").attr('onclick', 'initializeGame("draft")');
	else $("#createStartGame").attr('onclick', 'initializeGame("sealed")');
}

function initializeGame(draftOrSealed)
{
	$("#game_"+uid).attr('selected','selected');
	rerenderPlayersList();
	var i = 0;
	var xhr = new XMLHttpRequest();
	var addr = hostServerAddress+draftOrSealed+"/new";
	if (draftOrSealed == "draft")
	{
		//we need to pass extra parameters: players number and players id.
		addr += "?playersNo="+document.getElementById("game_"+uid).text[document.getElementById("game_"+uid).text.length-2];
		for (i=0; i < document.getElementById("playerslist").children.length; i++) {
			//of course, using player's name is not safe, might lead to sqlI/xss vul, but we just keep it this way for now.
			addr += "&player"+i+"="+document.getElementById("playerslist").children[i].text;
		}
	}
	xhr.open('GET', addr, false);  		//hostServerAddress is derived from index.html.erb, must
	//use this under rails framework.
	log("Sending initialize game command...\n");
	xhr.send();
	if (xhr.status == 200) {  
		startGame(); 
	}
}

function startGame()
{
	log("Game server initialized, starting the game...");
	message = new Message("startGame", username, "", uid);
	chatws.send(JSON.stringify(message));
}

function joinGame()
{
	cur_selected = $("#gameslist option:selected").attr('id');
	if (cur_selected!=undefined)
	{
		cur_selected = cur_selected.replace(/\D*/,'');
		message = new Message("joinGame", username, cur_selected, uid);			//cur_selected is the game intended to join
		chatws.send(JSON.stringify(message));
	}
	else
	{
		log("please select a game first!");
	}
}

function leaveGame()
{
	message = new Message("leaveGame", username, "", uid);
	chatws.send(JSON.stringify(message));
	$("#createStartGame").val("Create a game");
	$("#createStartGame").attr('onclick', 'createGame()');
}

function retrieveGameList()
{
	message = new Message("retrieveGameList", username, "", uid);
	chatws.send(JSON.stringify(message));
}

function rerenderGamesList(g)
{
	$('#gameslist').html("");		//clear
	k = keys(g);
	for (i = 0; i < k.length; i++)
	{
		$('#gameslist').append("<option id='game_"+g[k[i]].hostUID+"' onclick = 'rerenderPlayersList();'>"+g[k[i]].type+":"+g[k[i]].hostName+"  ("+g[k[i]].players.length+(g[k[i]].type=="sealed"?"/2":"")+")</option>")
	}
}

function rerenderPlayersList()
{
	cur_selected = $("#gameslist option:selected").attr('id');
	if (cur_selected!=undefined)
	{
		cur_selected = cur_selected.replace(/\D*/,'');
		cur_game = games[cur_selected];
		$('#playerslist').html("");
		for (i = 0; i < cur_game.players.length; i++)
		{
			$('#playerslist').append("<option id='player_"+cur_game.players[i][0]+"'>"+cur_game.players[i][1]+"</option>")
		}
	}
}

function processMessage(s)
{
	//debug: $('#chatbox').val($('#chatbox').val()+s.data+"\n");
	msg = JSON.parse(s.data);
	var d = new Date();
	time = d.toTimeString();
	switch (msg.type)
	{
		case "login":
			if (msg.body!="")
			{
				//initial login msg
				//need to parse body
				users = JSON.parse(msg.body);
				k = keys(users);
				for (i = 0; i < k.length; i++)
				{
					$('#userslist').append("<option id='user_"+users[k[i]].uid+"'>"+users[k[i]].name+"</option>")
				}
				log('Users list retrieved!\nRetrieving games list...\n');
				retrieveGameList();
			}
			else
			{
				//other user joins after current user did, no need to parse body
				$('#userslist').append("<option id='user_"+msg.uid+"'>"+msg.username+"</option>")
				log(time + " " + msg.username + " has entered the room\n");
			}
			break;
		case "message":
			log(time + " " + msg.username + " : " + msg.body + "\n");
			break;
		case "logout":
			var id = msg.uid;
			$('#user_'+id).remove();
			log(time + " " + msg.username + " has left the room\n");
			break;
		case "createSealedGame":
			games[msg.uid] = new Game(msg.username,msg.uid,[[msg.uid,msg.username]],"sealed");
			rerenderGamesList(games);
			break;
		case "createDraftGame":
			games[msg.uid] = new Game(msg.username,msg.uid,[[msg.uid,msg.username]],"draft");
			rerenderGamesList(games);
			break;
		case "gameList":
			games = JSON.parse(msg.body);
			rerenderGamesList(games);
			if (initialization){
				log('Games list retrieved!\nInitialization done! Enjoy the game!\n');
				initialization = false;
			}
			break;
		case "startGame":
			game = JSON.parse(msg.body);
			shouldStartGame = false;
			for (i = 0; i<game.players.length; i++)
			{
				if (uid == game.players[i][0])
				{
					shouldStartGame = true;
					break;
				}
			}
			if (!shouldStartGame)
			{
				$('#game_'+game.hostUID).remove();
			}
			else
			{
				log("Redirecting to new game page...\n");
				window.setTimeout('window.location = host+"'+game.type+'/"+game.hostUID;',1000);
			}
			break;
		case "error":
			log('Error : ' + msg.body + '\n');
		default:
	}
		
}
