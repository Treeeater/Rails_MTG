//Global vars
myUsername = $('#account').attr('uname');
myUID = $('#account').attr('uid');
url = document.URL;
isGameHost = (myUID==(url.substr(url.indexOf('ed/')+3,url.length)));

//Global functions
log = function (s)
{
	$('#statusbox').val($('#statusbox').val() + s);
}

function init()
{
	
}

window.addEventListener("load",init);