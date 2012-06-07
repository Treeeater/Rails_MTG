(function(){
	//var ws = 0;
	function log(s)
	{
		$('#statusbox').val($('#statusbox').val() + s);
	}
	function clearStatusBox()
	{
		$('#statusbox').val('');
	}
	randomWait = function(f)
	{
		setTimeout(f,Math.random()*1000);
	}
	initializeCommunication = function()
	{
		clearStatusBox();
		ws = new WebSocket("ws://"+hostServerDomain+":"+gamePort+"/");
		ws.onopen = function(){
			log("Game server connected.");
			ws.close()
   		}
	}
	window.addEventListener("load",randomWait.bind(this,"initializeCommunication()"))
})();

