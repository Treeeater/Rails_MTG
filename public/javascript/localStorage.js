window.requestFileSystem  = window.requestFileSystem || window.webkitRequestFileSystem;

function errorHandler(e) {
  var msg = '';

  switch (e.code) {
    case FileError.QUOTA_EXCEEDED_ERR:
      msg = 'QUOTA_EXCEEDED_ERR';
      break;
    case FileError.NOT_FOUND_ERR:
      msg = 'NOT_FOUND_ERR';
      break;
    case FileError.SECURITY_ERR:
      msg = 'SECURITY_ERR';
      break;
    case FileError.INVALID_MODIFICATION_ERR:
      msg = 'INVALID_MODIFICATION_ERR';
      break;
    case FileError.INVALID_STATE_ERR:
      msg = 'INVALID_STATE_ERR';
      break;
    default:
      msg = 'Unknown Error';
      break;
  };

  console.log(msg);
};

function display(url,img)
{
	img.src = url;
}

function renderCard(imageID, imageExp, img)
{
	if (imageID < 100) imageID = "0" + imageID.toString();
	if (imageID < 10) imageID = "0" + imageID;
	var errorHandler = function() {
        // File is not readable or does not exist!
		// Download the image and store it instead.
		downloadAndSaveImage(imageID, imageExp, function(url){display(url,img);});
    };
    fs.root.getFile(ENV_Language+'+'+imageExp+'+'+imageID+".jpg", {}, function(fileEntry) {display(fileEntry.toURL(),img);}, errorHandler);
}

//get image data
function downloadAndSaveImage(imageID, imageExp, callback)
{
	var xhr = new XMLHttpRequest();
	var photoUrl = 'http://chromium.cs.virginia.edu:12340/cards/'+ENV_Language+'/'+imageExp+'/'+imageID+'.jpg';
	xhr.open('GET', photoUrl, true);

	// This stops the browser from parsing the data as UTF-8:
	xhr.overrideMimeType('text/plain; charset=x-user-defined');

	function stringToBinary(response) {
		var byteArray = new Uint8Array(response.length);
		for (var i = 0; i < response.length; i++) {
		byteArray[i] = response.charCodeAt(i) & 0xff;
		}
		return byteArray;
	}
	
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			fs.root.getFile(ENV_Language+'+'+imageExp+'+'+imageID+".jpg", {'create': true}, function(fileEntry) {
				fileEntry.createWriter(function(fileWriter) {
					fileWriter.onwriteend = function(event) {
						callback(fileEntry.toURL());
					}

					fileWriter.onerror = function(e) {
						console.log('Write failed: ' + e.toString());
					};
	  
					buffer = stringToBinary(xhr.response);
					var blob = new Blob([ buffer ], { type: 'image/jpeg' } )

					fileWriter.write(blob);
				}, errorHandler );
			});
		}
		if (xhr.readyState == 4 && xhr.status == 404) {
			document.getElementById('wrapper').innerHTML = "<h1><span style='color:blue'>Done! Enjoy your draft!</span></h1>";
		}
	}
	
	xhr.send();
};

if (window.requestFileSystem)
{
	function onInitFs(fs) { 
		window.fs = fs;
		start();
		console.log('Opened file system: ' + fs.name);
	}
	window.webkitStorageInfo.requestQuota(window.PERSISTENT, 300*1024*1024 /*300MB*/, function(){
		window.requestFileSystem(PERSISTENT, 300*1024*1024 /*300MB*/, onInitFs, errorHandler);
	}, errorHandler);
}