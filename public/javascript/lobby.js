(function (){
	chatServerConnected = false;
	connecting = false;
	username = $('#username').text();
	uid = $('#username').attr('uid');
	$('#chatInput').attr('disabled','disabled');
	window.addEventListener('load', clearChatBox, false);			//FF does not clear chatbox after refresh, this is a work around.
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

function Message()
{
	var type;
	var username;
	var body;
	var uid;
}

function connectChatServer()
{
	$('#chatbox').val($('#chatbox').val() + 'Connecting to chat server...\n');
	if (connecting||chatServerConnected)
	{
		alert("already connecting or connected! don't click this twice!")
		return;
	}
	connecting = true;
	chatws = new WebSocket("ws://localhost:3001/");
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
	$('#chatbox').val($('#chatbox').val() + 'Server connected!\n');
	chatServerConnected = true;
	connecting = false;
	var message = new Message();
	message.type = "login";
	message.username = username;
	message.body = "";
	message.uid = uid;
	chatws.send(JSON.stringify(message));
	$('#status_img').attr('src','/assets/lobby/connected.jpg');
	$('#chatInput').removeAttr('disabled');
	$('#chatInput').val('');
	chatws.onmessage = processMessage;
	$('#chatbox').val($('#chatbox').val() + 'Initialization done, retrieving users list...\n');
}

function closeConnection()
{
	if (!chatServerConnected) return;
	chatServerConnected = false;
	connecting = false;
	$('#status_img').attr('src','/assets/lobby/broken.png');
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
	$('#chatbox').val($('#chatbox').val() + errorMessage);
}

function testAndSend(e)
{
	if (e.keyCode==13)
		sendChatMsg($('#chatInput').val());
	end
}
function sendChatMsg(s)
{
	//post this to textarea first
	//$('#chatbox').val($('#chatbox').val()+username+" : "+s+"\n");
	//then push this to chat server
	msg = new Message();
	msg.type = "message";
	msg.body = s;
	msg.username = username;
	msg.uid = uid;
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
}

function joinGame()
{
}

function leaveGame()
{
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
				$('#chatbox').val($('#chatbox').val() + 'Users list retrieved!\nRetrieving games list...\n');
			}
			else
			{
				//other user joins after current user did, no need to parse body
				$('#userslist').append("<option id='user_"+msg.uid+"'>"+msg.username+"</option>")
				$('#chatbox').val($('#chatbox').val() + time + " " + msg.username + " has entered the room\n");
			}
			break;
		case "message":
			$('#chatbox').val($('#chatbox').val() + time + " " + msg.username + " : " + msg.body + "\n");
			break;
		case "logout":
			var id = msg.uid;
			$('#user_'+id).remove();
			$('#chatbox').val($('#chatbox').val() + time + " " + msg.username + " has left the room\n");
			break;
		default:
	}
		
}