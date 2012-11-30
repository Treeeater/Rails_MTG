function start()
{
	try {
		if (window.requestFileSystem)
		{
			var i = 1;
			ENV_Language = lang;
			var callback = function(src){
				document.getElementById('n').innerHTML=i.toString();
				i++;
				var j = (i<10)? "0"+i.toString() : i.toString();
				j=(i<100)? "0"+j : j;
				document.getElementById('pic').src = src;
				downloadAndSaveImage(j,exp,callback);
			};
			downloadAndSaveImage("001", exp, callback);
		}
		else
		{
			document.getElementById('wrapper').innerHTML = "<h1><span style='color:blue'>Caching is only supported when your browser supports the newest FileSystem API, i.e. window.requestFileSystem or window.webkitRequestFileSystem. Currently, only Chrome (version 13.0 or later) supports this API. Please use Chrome and then visit this page. This ensures you will have a smooth drafting experience w/o any lags after you cached the cards.</span></h1>";
		}
	}
	catch (e)
	{
	}
}