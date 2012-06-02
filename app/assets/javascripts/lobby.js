(function (){
	chatServerConnected = false;
	$('#chatInput').attr('disabled','disabled');
})();

function connectChatServer()
{
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
	$('#status_img').attr('src','/assets/lobby/connected.jpg');
	$('#chatInput').removeAttr('disabled');
	$('#chatInput').val('');
}

function closeConnection()
{
	if (!chatServerConnected) return;
	chatServerConnected = false;
	$('#status_img').attr('src','/assets/lobby/broken.png');
}

function timeOut()
{
	if (chatServerConnected) return;
	errorMessage = "Failed to connect to remote chat server, try again later."
	alert(errorMessage);
}

function sendChatMsg(s)
{
	//post this to textarea first
	$('#chatbox').val($('#chatbox').val()+$('#username').text()+" : "+s+"\n");
	//then push this to chat server
	//should setup a callback to remove 'sending...' after receiving response.
};

function clearChatBox()
{
	$('#chatbox').val("");	
}