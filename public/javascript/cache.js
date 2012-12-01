var numberOfCards = {"RTR":275,"RAV":306,"GPT":165,"DIS":148};
var cacheReady = false;

function cacheCard(imageID, imageExp, img)
//for cache.js only
{
	if (imageID < 100) imageID = "0" + imageID.toString();
	if (imageID < 10) imageID = "0" + imageID;
	var errorHandler = function() {
        // File is not readable or does not exist!
		// Download the image and store it instead.
		downloadAndSaveImage(imageID, imageExp, function(url){
			display(url,img);
			cachedCards++;
			document.getElementById('n').innerHTML=cachedCards.toString();
			if (cachedCards == total-1){
				document.getElementById('finished').style.visibility = "visible";
			}
		});
    };
    fs.root.getFile(ENV_Language+'+'+imageExp+'+'+imageID+".jpg", {}, function(fileEntry) {
		display(fileEntry.toURL(),img);
		cachedCards++;
		document.getElementById('n').innerHTML=cachedCards.toString();
		if (cachedCards == total-1){
			document.getElementById('finished').style.visibility = "visible";
		}
	}, errorHandler);
}

function cacheStart()
{
	if ((!window.requestFileSystem) && (typeof window.requestFileSystem === "undefined"))
	{
		document.getElementById('wrapper').innerHTML = "<h1><span style='color:blue'>Caching is only supported when your browser supports the newest FileSystem API, i.e. window.requestFileSystem or window.webkitRequestFileSystem. Currently, only Chrome (version 13.0 or later) supports this API. Please use Chrome and then visit this page. This ensures you will have a smooth drafting experience w/o any lags after you cached the cards.</span></h1>";
		return;
	}
	if (!cacheReady) {alert("Cache not ready yet, please try again later!"); return;}
	document.getElementById('finished').style.visibility = "hidden";
	var e = document.getElementById("exp");
	var exp = e.options[e.selectedIndex].value;
	document.getElementById('expDisplay').innerHTML = exp;
	var l = document.getElementById("lang");
	var lang = l.options[l.selectedIndex].value;
	document.getElementById('langDisplay').innerHTML = (lang == "cn")?"中文":"English";
	document.getElementById('wrapper').style.visibility="visible";
	try {
		var pic = document.getElementById('pic');
		var i = 1;
		window.cachedCards = 0;
		window.total = numberOfCards[exp];
		ENV_Language = lang;
		for (i = 1;i < total; i++)
		{
			cacheCard(i, exp, pic);
		}
	}
	catch (e)
	{
		console.log(e);
	}
}
