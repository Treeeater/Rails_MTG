(function (){
	chatServerConnected = false;
	connecting = false;
	username = $('#username').text();
	uid = $('#username').attr('uid');
	$('#chatInput').attr('disabled','disabled');
})();

function Message()
{
	var type;
	var username;
	var body;
	var uid;
}

function connectChatServer()
{
	if (connecting||chatServerConnected)
	{
		alert("already connecting! don't click this twice!")
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
}

function closeConnection()
{
	if (!chatServerConnected) return;
	chatServerConnected = false;
	connecting = false;
	$('#status_img').attr('src','/assets/lobby/broken.png');
}

function timeOut()
{
	if (chatServerConnected) return;
	connecting = false;
	errorMessage = "Failed to connect to remote chat server, try again later."
	alert(errorMessage);
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

function processMessage(s)
{
	//debug: $('#chatbox').val($('#chatbox').val()+s.data+"\n");
	msg = JSON.parse(s.data);
	var d = new Date();
	time = d.toTimeString();
	switch (msg.type)
	{
		case "login":
			$('#chatbox').val($('#chatbox').val() + time + " " + msg.username + " has entered the room\n");
			$('#userslist').append("<option id='user_"+msg.uid+"'>"+msg.username+"</option>")
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