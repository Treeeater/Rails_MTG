var img = new Image();
var i = 1;
img.src = "http://magiccards.info/scans/en/rav/"+i.toString()+".jpg";
document.body.appendChild(img);
img.onload = function(){
	i++;
	if (i==254) {alert('done'); return;}
	document.getElementById('number').innerHTML = i.toString();
	img.src = "http://magiccards.info/scans/en/rav/"+i.toString()+".jpg";
}