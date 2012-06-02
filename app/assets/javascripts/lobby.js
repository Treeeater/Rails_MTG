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