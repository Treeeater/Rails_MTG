//helpers:
var landsVisual = {"plains":510,"island":550,"swamp":590,"mountain":630,"forest":670};
var middleMouseDown = false;
var originalTipImage = null;
var addLands = function(l){
	var number = prompt("How many " + l + " do you want?");
	window[l] = number;
	if (stage.get("#"+l+"Number").length==0)
	{
		var landText = new Kinetic.Text({
		  x: 70,
		  y: landsVisual[l],
		  text: number + " " + l,
		  fontSize: 12,
		  fontFamily: "Calibri",
		  textFill: "green",
		  align: "center",
		  verticalAlign: "middle",
		  id: l+"Number"
		});
		layer.add(landText);
		stage.get("#"+l+"Number")[0].attrs.number = number;
	}
	else
	{
		stage.get("#"+l+"Number")[0].setText(number + " " + l);
		stage.get("#"+l+"Number")[0].attrs.number=number;
	}
	layer.draw();
};
function timeDown(){
	if (timer == 0) return;
	timer--;
	minute = Math.floor(timer/60);
	seconds = timer - minute*60;
	stage.get("#timerText")[0].setText(minute.toString()+":"+seconds.toString());
	timerLayer.draw();
}
//onload:
function loadFixedFrames() {
	var imgReady = 0;
	function testAndDraw(){
		//if (imgReady == 6) {layer.draw();} else {imgReady++; alert(imgReady);}
		layer.draw();
	}
	stage = new Kinetic.Stage({
	  container: "container",
	  width: 1280,
	  height: 900
	});
	layer = new Kinetic.Layer();
	cardLayer = new Kinetic.Layer();
	//draw section division lines
	var blueLine = new Kinetic.Line({
	  points: [240, 360, 1280, 360],
	  stroke: "green",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round",
	});
	
	var blueLine2 = new Kinetic.Line({
	  points: [240, 0, 240, 900],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});
	
	var blueLine3 = new Kinetic.Line({
	  points: [0, 320, 240, 320],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});
	
	var blueLine4 = new Kinetic.Line({
	  points: [0, 360, 240, 360],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});
	
	var blueLine5 = new Kinetic.Line({
	  points: [0, 450, 240, 450],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	var blueLine6 = new Kinetic.Line({
	  points: [0, 490, 240, 490],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	var blueLine7 = new Kinetic.Line({
	  points: [150, 490, 150, 700],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	var blueLine8 = new Kinetic.Line({
	  points: [0, 700, 240, 700],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	layer.add(blueLine);
	layer.add(blueLine2);
	layer.add(blueLine3);
	layer.add(blueLine4);
	layer.add(blueLine5);
	layer.add(blueLine6);
	layer.add(blueLine7);
	layer.add(blueLine8);
	
	//add timer
	var timerTitleText = new Kinetic.Text({
	  x: 40,
	  y: 335,
	  text: "Time Remaining : ",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	layer.add(timerTitleText);
	//frequent redraw timer layer
	timerLayer = new Kinetic.Layer();
	var timerText = new Kinetic.Text({
	  x: 170,
	  y: 335,
	  text: "15:00",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "green",
	  align: "center",
	  verticalAlign: "middle",
	  id: "timerText"
	});
	timer = 900;
	timerLayer.add(timerText);
	setInterval("timeDown();",1000);
	//cardback
	var imageObj = new Image();
	imageObj.onload = function() {
		var image = new Kinetic.Image({
			x: 0,
			y: 0,
			image: imageObj,
			width: 240,
			height: 320,
			id: "detailed"
			});
		layer.add(image);
		
		//image tooltip helper (middle button)
		var imageTooltip = new Kinetic.Image({
			x: 0,
			y: 0,
			image: imageObj,
			width: 240,
			height: 320,
			visible: false,
			id: "tooltip"
		});
		layer.add(imageTooltip);
		imageTooltip.setZIndex(99999);
		layer.draw();
	}
	//
	//five basic lands
	plains=island=swamp=mountain=forest=0;
	var imageObj2 = new Image();
	imageObj2.onload = function() {
		var image = new Kinetic.Image({
			x: 20,
			y: 500,
			image: imageObj2,
			width: 30,
			height: 33
			});
		image.on("click",addLands.bind(window,"plains"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		layer.add(image);
		testAndDraw();
	}
	var imageObj3 = new Image();
	imageObj3.onload = function() {
		var image = new Kinetic.Image({
			x: 20,
			y: 540,
			image: imageObj3,
			width: 30,
			height: 33
			});
		image.on("click",addLands.bind(window,"island"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		layer.add(image);
		testAndDraw();
	}
	var imageObj4 = new Image();
	imageObj4.onload = function() {
		var image = new Kinetic.Image({
			x: 20,
			y: 580,
			image: imageObj4,
			width: 30,
			height: 33
			});
		image.on("click",addLands.bind(window,"swamp"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		layer.add(image);
		testAndDraw();
	}
	var imageObj5 = new Image();
	imageObj5.onload = function() {
		var image = new Kinetic.Image({
			x: 20,
			y: 620,
			image: imageObj5,
			width: 30,
			height: 33
			});
		image.on("click",addLands.bind(window,"mountain"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		layer.add(image);
		testAndDraw();
	}
	var imageObj6 = new Image();
	imageObj6.onload = function() {
		var image = new Kinetic.Image({
			x: 20,
			y: 660,
			image: imageObj6,
			width: 30,
			height: 33
			});
		image.on("click",addLands.bind(window,"forest"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		layer.add(image);
		testAndDraw();
	}
	imageObj.src = hostServerAddress+"assets/mtg/general/back.jpg";
	imageObj2.src = hostServerAddress+"assets/mtg/general/white.png";
	imageObj3.src = hostServerAddress+"assets/mtg/general/blue.png";
	imageObj4.src = hostServerAddress+"assets/mtg/general/black.png";
	imageObj5.src = hostServerAddress+"assets/mtg/general/red.png";
	imageObj6.src = hostServerAddress+"assets/mtg/general/green.png";
	
	//cards color count

	var colorsVisual = {"W":510,"U":550,"B":590,"R":630,"G":670};
	colorCardsNumber = {"W":0,"U":0,"B":0,"R":0,"G":0};
	for (i in colorsVisual) {
		if (colorsVisual.hasOwnProperty(i)) {
			var cardsCountText = new Kinetic.Text({
				  x: 165,
				  y: colorsVisual[i],
				  text: "0 " + i + " cards",
				  fontSize: 12,
				  fontFamily: "Calibri",
				  textFill: "green",
				  align: "center",
				  verticalAlign: "middle",
				  id: i+"Number"
			});
			layer.add(cardsCountText);
		}
	}
	//sort buttons
	//sort by color
	var buttonSortColor = new Kinetic.Rect({
	  x: 30,
	  y: 380,
	  width: 80,
	  height: 20,
	  fill: "#00D2FF",
	  stroke: "black",
	  strokeWidth: 2
	});
	layer.add(buttonSortColor);
	var buttonSortColorText = new Kinetic.Text({
	  x: 40,
	  y: 385,
	  text: "ColorSort",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	buttonSortColorText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortColorText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortColorText.on("click",sortByColor);
	layer.add(buttonSortColorText);
	
	//sort by cmc
	var buttonSortCMC = new Kinetic.Rect({
	  x: 130,
	  y: 380,
	  width: 80,
	  height: 20,
	  fill: "#00D2FF",
	  stroke: "black",
	  strokeWidth: 2
	});
	layer.add(buttonSortCMC);
	var buttonSortCMCText = new Kinetic.Text({
	  x: 140,
	  y: 385,
	  text: "CMCSort",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	buttonSortCMCText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortCMCText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortCMCText.on("click",sortByCMC);//sortByCMC;
	layer.add(buttonSortCMCText);
	
	//sort by rarity

	var buttonSortRarity = new Kinetic.Rect({
	  x: 30,
	  y: 410,
	  width: 80,
	  height: 20,
	  fill: "#00D2FF",
	  stroke: "black",
	  strokeWidth: 2
	});
	layer.add(buttonSortRarity);
	var buttonSortRarityText = new Kinetic.Text({
	  x: 38,
	  y: 415,
	  text: "RaritySort",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	buttonSortRarityText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortRarityText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortRarityText.on("click",sortByRarity);//sortByCMC;
	layer.add(buttonSortRarityText);

	//add land button
	
	var buttonAddLand = new Kinetic.Rect({
	  x: 130,
	  y: 410,
	  width: 90,
	  height: 20,
	  fill: "#FFFF00",
	  stroke: "black",
	  strokeWidth: 2
	});
	layer.add(buttonAddLand);
	var buttonAddLandText = new Kinetic.Text({
	  x: 135,
	  y: 415,
	  text: "Submit Deck",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	buttonAddLandText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonAddLandText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonAddLandText.on("click",function(){alert("Submit deck not implemented!")});
	layer.add(buttonAddLandText);
	
	//card count
	var cardCountHardCodedText = new Kinetic.Text({
	  x: 20,
	  y: 465,
	  text: "Main board:        Side Board:",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle"
	});
	layer.add(cardCountHardCodedText);

	var cardCountMBText = new Kinetic.Text({
	  x: 100,
	  y: 465,
	  text: "",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle",
	  id: "cardCountMBText"
	});
	layer.add(cardCountMBText);

	var cardCountSBText = new Kinetic.Text({
	  x: 210,
	  y: 465,
	  text: "",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "black",
	  align: "center",
	  verticalAlign: "middle",
	  id: "cardCountSBText"
	});
	layer.add(cardCountSBText);

	//finalize
	stage.add(timerLayer);
	stage.add(cardLayer);
	stage.add(layer);
	document.getElementById('container').firstChild.children[2].oncontextmenu = function() {
		return false;
	}
	//this prevents doubleclick selecting all outside text.
	document.getElementById('container').firstChild.children[2].onselectstart = function () { return false; }
	//initCardDisplay:
	initCardDisplay();
};

function sortSBByCMC()
{
	var c = new Array();
	var i=0;
	for (i = 0; i < 30; i++) c[i] = 0;
	sbDisplayOrderArray = new Array();
	for (i in sbCards){
		c[sbCards[i].cmc] ++;
	}
	for (i in c)
	{
		if (i!=0) c[i]+=c[i-1];
	}
	c0 = 0;
	for (i in sbCards)
	{
		if (sbCards[i].cmc==0) {
			sbCards[i].displayOrder = c0;
			sbDisplayOrderArray[c0] = i;
			c0++;
		}
		else {
			sbCards[i].displayOrder = c[sbCards[i].cmc-1];
			sbDisplayOrderArray[c[sbCards[i].cmc-1]] = i;
			c[sbCards[i].cmc-1]++;
		}
	}
}

function sortMBByCMC()
{
	var c = new Array();
	var i=0;
	for (i = 0; i < 30; i++) c[i] = 0;
	mbDisplayOrderArray = new Array();
	for (i in mbCards){
		c[mbCards[i].cmc] ++;
	}
	for (i in c)
	{
		if (i!=0) c[i]+=c[i-1];
	}
	c0 = 0;
	for (i in mbCards)
	{
		if (mbCards[i].cmc==0) {
			mbCards[i].displayOrder = c0;
			mbDisplayOrderArray[c0] = i;
			c0++;
		}
		else {
			mbCards[i].displayOrder = c[mbCards[i].cmc-1];
			mbDisplayOrderArray[c[mbCards[i].cmc-1]] = i;
			c[mbCards[i].cmc-1]++;
		}
	}
}

function sortSBByColor()
{
	var i;
	var w=u=b=r=g=a=0;
	sbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in sbCards){
		switch (sbCards[i].color){
			case 16:
				w++;
				break;
			case 8:
				u++;
				break;
			case 4:
				b++;
				break;
			case 2:
				r++;
				break;
			case 1:
				g++;
				break;
			case 0:
				a++;
				break;
			default:
		}
	}
	//accumulate
	u+=w;
	b+=u;
	r+=b;
	g+=r;
	a+=g;
	//assign the order
	z = 0;
	for (i in sbCards){
		switch (sbCards[i].color){
			case 16:
				sbCards[i].displayOrder = z;
				sbDisplayOrderArray[z] = i;
				z++;
				break;
			case 8:
				sbCards[i].displayOrder = w;
				sbDisplayOrderArray[w] = i;
				w++;
				break;
			case 4:
				sbCards[i].displayOrder = u;
				sbDisplayOrderArray[u] = i;
				u++;
				break;
			case 2:
				sbCards[i].displayOrder = b;
				sbDisplayOrderArray[b] = i;
				b++;
				break;
			case 1:
				sbCards[i].displayOrder = r;
				sbDisplayOrderArray[r] = i;
				r++;
				break;
			case 0:
				sbCards[i].displayOrder = g;
				sbDisplayOrderArray[g] = i;
				g++;
				break;
			default:
				sbCards[i].displayOrder = a;
				sbDisplayOrderArray[a] = i;
				a++;
		}
	}
}

function sortMBByColor()
{
	var i;
	var w=u=b=r=g=a=0;
	mbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in mbCards){
		switch (mbCards[i].color){
			case 16:
				w++;
				break;
			case 8:
				u++;
				break;
			case 4:
				b++;
				break;
			case 2:
				r++;
				break;
			case 1:
				g++;
				break;
			case 0:
				a++;
				break;
			default:
		}
	}
	//accumulate
	u+=w;
	b+=u;
	r+=b;
	g+=r;
	a+=g;
	//assign the order
	z = 0;
	for (i in mbCards){
		switch (mbCards[i].color){
			case 16:
				mbCards[i].displayOrder = z;
				mbDisplayOrderArray[z] = i;
				z++;
				break;
			case 8:
				mbCards[i].displayOrder = w;
				mbDisplayOrderArray[w] = i;
				w++;
				break;
			case 4:
				mbCards[i].displayOrder = u;
				mbDisplayOrderArray[u] = i;
				u++;
				break;
			case 2:
				mbCards[i].displayOrder = b;
				mbDisplayOrderArray[b] = i;
				b++;
				break;
			case 1:
				mbCards[i].displayOrder = r;
				mbDisplayOrderArray[r] = i;
				r++;
				break;
			case 0:
				mbCards[i].displayOrder = g;
				mbDisplayOrderArray[g] = i;
				g++;
				break;
			default:
				mbCards[i].displayOrder = a;
				mbDisplayOrderArray[a] = i;
				a++;
		}
	}
}

function sortSBByRarity()
{
	var i;
	var c=u=r=m=0;
	sbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in sbCards){
		switch (sbCards[i].rarity){
			case 1:
				c++;
				break;
			case 2:
				u++;
				break;
			case 3:
				r++;
				break;
			case 4:
				m++;
				break;
			default:
		}
	}
	//accumulate
	u+=c;
	r+=u;
	//assign the order
	z = 0;
	for (i in sbCards){
		switch (sbCards[i].rarity){
			case 1:
				sbCards[i].displayOrder = z;
				sbDisplayOrderArray[z] = i;
				z++;
				break;
			case 2:
				sbCards[i].displayOrder = c;
				sbDisplayOrderArray[c] = i;
				c++;
				break;
			case 3:
				sbCards[i].displayOrder = u;
				sbDisplayOrderArray[u] = i;
				u++;
				break;
			case 4:
				sbCards[i].displayOrder = r;
				sbDisplayOrderArray[r] = i;
				r++;
				break;
			default:
		}
	}
}

function sortMBByRarity()
{
	var i;
	var c=u=r=m=0;
	mbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in mbCards){
		switch (mbCards[i].rarity){
			case 1:
				c++;
				break;
			case 2:
				u++;
				break;
			case 3:
				r++;
				break;
			case 4:
				m++;
				break;
			default:
		}
	}
	//accumulate
	u+=c;
	r+=u;
	//assign the order
	z = 0;
	for (i in mbCards){
		switch (mbCards[i].rarity){
			case 1:
				mbCards[i].displayOrder = z;
				mbDisplayOrderArray[z] = i;
				z++;
				break;
			case 2:
				mbCards[i].displayOrder = c;
				mbDisplayOrderArray[c] = i;
				c++;
				break;
			case 3:
				mbCards[i].displayOrder = u;
				mbDisplayOrderArray[u] = i;
				u++;
				break;
			case 4:
				mbCards[i].displayOrder = r;
				mbDisplayOrderArray[r] = i;
				r++;
				break;
			default:
		}
	}
}

function loadAllCards()
{
	//load sb first.
	var startX = 250;
	var startY = 370;
	var i,d;
	cardsLoaded = 0;
	for (d in sbDisplayOrderArray)
	{
		i = sbDisplayOrderArray[d];
		(function (X,Y,I){
			var displayOrder = sbCards[I].displayOrder;
			var imageObj = new Image();
			imageObj.onload = function() {
				var image = new Kinetic.Image({
					x: X + Math.floor(displayOrder/11) * 128,
					y: Y + (displayOrder%11) * 18,
					image: imageObj,
					width: 120,
					height: 160,
					draggable: true,
					dragBounds: {
						top: 370,
						left: 250,
						right: 1160,
						bottom: 730
					},
					id: "card"+sbCards[I].uid.toString()
				});
				image.cuid = sbCards[I].uid;
				image.cname = sbCards[I].cardName;
				image.on("mouseover",function(){
					stage.get("#detailed")[0].setImage(imageObj);layer.draw();
					if (middleMouseDown)
					{
						var imageTooltip = stage.get("#tooltip")[0];
						var p = image.getPosition();
						if (p.x<1000){
							imageTooltip.setX(p.x+image.attrs.width+10);
						}
						else {imageTooltip.setX(p.x-250)};
						if (p.y>570){
							imageTooltip.setY(p.y-320+image.attrs.height);
						}
						else {imageTooltip.setY(p.y);}
						imageTooltip.setImage(imageObj);
						imageTooltip.show();
						layer.draw();
						cardLayer.draw();
					}
				});

				image.on("mouseout",function(evt){
					if (evt.which == 2){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						stage.get("#tooltip")[0].hide();
						if (originalTipImage) originalTipImage.setDraggable(true);		//the user may have moved the mouse when middle button is held, we need to reset the original tooltiped image, not this one.
						cardLayer.draw();
						layer.draw();
					}
				});

				image.on("mousedown",function(evt){
					//console.log('downed');
					if (evt.which==1) {
						curMouseDownCardUID = image.cuid;		//global var
						downLayer = image.getZIndex();
						image.moveToTop();
					}
					if (evt.which==2)
					{
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						image.setDraggable(false);
						middleMouseDown = true;				//this is used in mouseover event.
						originalTipImage = image;			//this is used to restore all images' draggable attribute after mouseup event.
						var imageTooltip = stage.get("#tooltip")[0];
						var p = image.getPosition();
						if (p.x<1000){
							imageTooltip.setX(p.x+image.attrs.width+10);
						}
						else {imageTooltip.setX(p.x-250)};
						if (p.y>570){
							imageTooltip.setY(p.y-320+image.attrs.height);
						}
						else {imageTooltip.setY(p.y);}
						imageTooltip.setImage(imageObj);
						imageTooltip.show();
						imageTooltip.moveToTop();
						layer.draw();
					}
					return false;
				});
				image.on("mouseup",function(evt){
					//console.log('uped');
					if (evt.which==1){
						if (curMouseDownCardUID == image.cuid) image.setZIndex(downLayer);
					}
					if (evt.which==2){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						stage.get("#tooltip")[0].hide();
						originalTipImage.setDraggable(true);		//the user may have moved the mouse when middle button is held, we need to reset the original tooltiped image, not this one.
						middleMouseDown = false;
					}
					cardLayer.draw();
					layer.draw();
					return false;
				});
				image.on('click', function(evt) {
					//console.log('clicked');
					if (evt.which==3){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
					}
					return false;
					//var evt = window.event;
					//evt.stopPropagation()
					//var rightClick = evt.which ? evt.which == 3 : evt.button == 2;
					//console.log(evt.which);
				});
				image.on('dblclick', function(evt) {
					//console.log('dblclicked');
					if (evt.which==1){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						cardToMB(image.cuid,image);
						cardLayer.draw();
					}
					return false;
					//var evt = window.event;
					//evt.stopPropagation()
					//var rightClick = evt.which ? evt.which == 3 : evt.button == 2;
					//console.log(evt.which);
				});
				cardLayer.add(image);
				cardsLoaded++;
				if (cardsLoaded == totalCardNumber) reLayerCards();
			}
			imageObj.src = sbCards[I].engSRC;
		})(startX,startY,i);
	}
	
	//load mb second.
	startX = 250;
	startY = 5;
	for (d in mbDisplayOrderArray)
	{
		i = mbDisplayOrderArray[d];
		(function (X,Y,I){
			var displayOrder = mbCards[I].displayOrder;
			var imageObj = new Image();
			imageObj.onload = function() {
				var image = new Kinetic.Image({
					x: X + Math.floor(displayOrder/11) * 128,
					y: Y + (displayOrder%11) * 18,
					image: imageObj,
					width: 120,
					height: 160,
					draggable: true,
					dragBounds: {
						top: 5,
						left: 250,
						right: 1160,
						bottom: 200
					},
					id: "card"+mbCards[I].uid.toString()
				});
				image.cuid = mbCards[I].uid;
				image.cname = mbCards[I].cardName;
				image.on("mouseover",function(){stage.get("#detailed")[0].setImage(imageObj);layer.draw();});
				image.on("mousedown",function(evt){
					//console.log('downed');
					if (evt.which==1) {
						curMouseDownCardUID = image.cuid;		//global var
						downLayer = image.getZIndex();
						image.moveToTop();
					}
					if (evt.which==2)
					{
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						var imageTooltip = stage.get("#tooltip")[0];
						var p = image.getPosition();
						if (p.x<1000){
							imageTooltip.setX(p.x+image.attrs.width+10);
						}
						else {imageTooltip.setX(p.x-250)};
						if (p.y>570){
							imageTooltip.setY(p.y-320+image.attrs.height);
						}
						else {imageTooltip.setY(p.y);}
						imageTooltip.setImage(imageObj);
						imageTooltip.show();
						imageTooltip.moveToTop();
						layer.draw();
					}
					return false;
				});
				image.on("mouseup",function(evt){
					//console.log('uped');
					if (evt.which==1){
						if (curMouseDownCardUID == image.cuid) image.setZIndex(downLayer);
					}
					if (evt.which==2){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						stage.get("#tooltip")[0].hide();
					}
					layer.draw();
					cardLayer.draw();
					return false;
				});
				image.on('click', function(evt) {
					//console.log('clicked');
					if (evt.which==3){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
					}
					return false;
					//var evt = window.event;
					//evt.stopPropagation()
					//var rightClick = evt.which ? evt.which == 3 : evt.button == 2;
					//console.log(evt.which);
				});
				image.on('dblclick', function(evt) {
					//console.log('dblclicked');
					if (evt.which==1){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						cardToSB(image.cuid,image);
						cardLayer.draw();
					}
					return false;
					//var evt = window.event;
					//evt.stopPropagation()
					//var rightClick = evt.which ? evt.which == 3 : evt.button == 2;
					//console.log(evt.which);
				});
				cardLayer.add(image);
				cardsLoaded++;
				if (cardsLoaded == totalCardNumber) reLayerCards();
			}
			imageObj.src = mbCards[I].engSRC;
		})(startX,startY,i);
	}
};

function cardToMB(cuid,oldimage)
{
	cardLayer.remove(oldimage);		//visually remove this one.
	//back end representation move
	for (i in sbCards)
	{
		if (sbCards[i].uid == cuid) break;
	}
	var thisCard = sbCards[i];
	mbCards.push(thisCard);
	sbCards.splice(i,1);
	//visually add this image to MB
	var imageObj = new Image();
	X = 250;
	Y = 5;
	imageObj.onload = function() {
		var image = new Kinetic.Image({
			x: X + Math.floor(mbCards.length/11) * 128,
			y: Y + (mbCards.length%11) * 18,
			image: imageObj,
			width: 120,
			height: 160,
			draggable: true,
			dragBounds: {
				top: 5,
				left: 250,
				right: 1160,
				bottom: 200
			},
			id: "card"+cuid.toString()
		});
		image.cuid = cuid;
		image.cname = thisCard.cardName;
		image.on("mouseover",function(){stage.get("#detailed")[0].setImage(imageObj);layer.draw();});
		image.on("mousedown",function(evt){
			//console.log('downed');
			if (evt.which==1) {
				curMouseDownCardUID = image.cuid;		//global var
				downLayer = image.getZIndex();
				image.moveToTop();
			}
			if (evt.which==2)
			{
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				var imageTooltip = stage.get("#tooltip")[0];
				var p = image.getPosition();
				if (p.x<1000){
					imageTooltip.setX(p.x+image.attrs.width+10);
				}
				else {imageTooltip.setX(p.x-250)};
				if (p.y>570){
					imageTooltip.setY(p.y-320+image.attrs.height);
				}
				else {imageTooltip.setY(p.y);}
				imageTooltip.setImage(imageObj);
				imageTooltip.show();
				imageTooltip.moveToTop();
				layer.draw();
			}
			return false;
		});
		image.on("mouseup",function(evt){
			//console.log('uped');
			if (evt.which==1){
				if (curMouseDownCardUID == image.cuid) image.setZIndex(downLayer);
			}
			if (evt.which==2){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				stage.get("#tooltip")[0].hide();
			}
			layer.draw();
			cardLayer.draw();
			return false;
		});
		image.on('click', function(evt) {
			//console.log('clicked');
			if (evt.which==3){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
			}
			return false;
		});
		image.on('dblclick', function(evt) {
			//console.log('dblclicked');
			if (evt.which==1){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				cardToSB(image.cuid,image);
				cardLayer.draw();
			}
			return false;
		});
		cardLayer.add(image);
		stage.get("#cardCountMBText")[0].setText(mbCards.length.toString());
		stage.get("#cardCountSBText")[0].setText(sbCards.length.toString());
		cardColor = (thisCard.color & 16) ? 'W' : '';
		if (cardColor!='') colorCardsNumber[cardColor]++;
		cardColor = (thisCard.color & 8) ? 'U' : '';
		if (cardColor!='') colorCardsNumber[cardColor]++;
		cardColor = (thisCard.color & 4) ? 'B' : '';
		if (cardColor!='') colorCardsNumber[cardColor]++;
		cardColor = (thisCard.color & 2) ? 'R' : '';
		if (cardColor!='') colorCardsNumber[cardColor]++;
		cardColor = (thisCard.color & 1) ? 'G' : '';
		if (cardColor!='') colorCardsNumber[cardColor]++;
		stage.get("#WNumber")[0].setText(colorCardsNumber['W'].toString() + " " + 'W' + " cards");
		stage.get("#UNumber")[0].setText(colorCardsNumber['U'].toString() + " " + 'U' + " cards");
		stage.get("#BNumber")[0].setText(colorCardsNumber['B'].toString() + " " + 'B' + " cards");
		stage.get("#RNumber")[0].setText(colorCardsNumber['R'].toString() + " " + 'R' + " cards");
		stage.get("#GNumber")[0].setText(colorCardsNumber['G'].toString() + " " + 'G' + " cards");
		layer.draw();
		cardLayer.draw();
	}
	imageObj.src = thisCard.engSRC;
}

function cardToSB(cuid,oldimage)
{
	cardLayer.remove(oldimage);		//visually remove this one.
	//back end representation move
	for (i in mbCards)
	{
		if (mbCards[i].uid == cuid) break;
	}
	thisCard = mbCards[i];
	sbCards.push(thisCard);
	mbCards.splice(i,1);
	//visually add this image to MB
	var imageObj = new Image();
	X = 250;
	Y = 370;
	imageObj.onload = function() {
		var image = new Kinetic.Image({
			x: X + Math.floor(sbCards.length/11) * 128,
			y: Y + (sbCards.length%11) * 18,
			image: imageObj,
			width: 120,
			height: 160,
			draggable: true,
			dragBounds: {
				top: 370,
				left: 250,
				right: 1160,
				bottom: 730
			},
			id: "card"+cuid.toString()
		});
		image.cuid = cuid;
		image.cname = thisCard.cardName;
		image.on("mouseover",function(){stage.get("#detailed")[0].setImage(imageObj);layer.draw();});
		image.on("mousedown",function(evt){
			//console.log('downed');
			if (evt.which==1) {
				curMouseDownCardUID = image.cuid;		//global var
				downLayer = image.getZIndex();
				image.moveToTop();
			}
			if (evt.which==2)
			{
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				var imageTooltip = stage.get("#tooltip")[0];
				var p = image.getPosition();
				if (p.x<1000){
					imageTooltip.setX(p.x+image.attrs.width+10);
				}
				else {imageTooltip.setX(p.x-250)};
				if (p.y>570){
					imageTooltip.setY(p.y-320+image.attrs.height);
				}
				else {imageTooltip.setY(p.y);}
				imageTooltip.setImage(imageObj);
				imageTooltip.show();
				imageTooltip.moveToTop();
				layer.draw();
			}
			return false;
		});
		image.on("mouseup",function(evt){
			//console.log('uped');
			if (evt.which==1){
				if (curMouseDownCardUID == image.cuid) image.setZIndex(downLayer);
			}
			if (evt.which==2){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				stage.get("#tooltip")[0].hide();
			}
			layer.draw();
			cardLayer.draw();
			return false;
		});
		image.on('click', function(evt) {
			//console.log('clicked');
			if (evt.which==3){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
			}
			return false;
		});
		image.on('dblclick', function(evt) {
			//console.log('dblclicked');
			if (evt.which==1){
				evt.stopPropagation();
				evt.preventDefault(evt);
				evt.cancelBubble = true;
				cardToMB(image.cuid,image);
				cardLayer.draw();
			}
			return false;
		});
		cardLayer.add(image);
		stage.get("#cardCountMBText")[0].setText(mbCards.length.toString());
		stage.get("#cardCountSBText")[0].setText(sbCards.length.toString());
		cardColor = (thisCard.color & 16) ? 'W' : '';
		if (cardColor!='') colorCardsNumber[cardColor]--;
		cardColor = (thisCard.color & 8) ? 'U' : '';
		if (cardColor!='') colorCardsNumber[cardColor]--;
		cardColor = (thisCard.color & 4) ? 'B' : '';
		if (cardColor!='') colorCardsNumber[cardColor]--;
		cardColor = (thisCard.color & 2) ? 'R' : '';
		if (cardColor!='') colorCardsNumber[cardColor]--;
		cardColor = (thisCard.color & 1) ? 'G' : '';
		if (cardColor!='') colorCardsNumber[cardColor]--;
		stage.get("#WNumber")[0].setText(colorCardsNumber['W'].toString() + " " + 'W' + " cards");
		stage.get("#UNumber")[0].setText(colorCardsNumber['U'].toString() + " " + 'U' + " cards");
		stage.get("#BNumber")[0].setText(colorCardsNumber['B'].toString() + " " + 'B' + " cards");
		stage.get("#RNumber")[0].setText(colorCardsNumber['R'].toString() + " " + 'R' + " cards");
		stage.get("#GNumber")[0].setText(colorCardsNumber['G'].toString() + " " + 'G' + " cards");
		layer.draw();
		cardLayer.draw();
	}
	imageObj.src = thisCard.engSRC;
}

function reLayerCards()
{
	for (d in sbDisplayOrderArray)
	{
		i = sbDisplayOrderArray[d];
		stage.get("#card"+sbCards[i].uid.toString())[0].setZIndex( sbCards[i].displayOrder % 11 );
	}
	for (d in mbDisplayOrderArray)
	{
		i = mbDisplayOrderArray[d];
		stage.get("#card"+mbCards[i].uid.toString())[0].setZIndex( mbCards[i].displayOrder % 11 + 1000);
	}
	cardLayer.draw();
}

function sortByColor()
{
	sortSBByColor();
	sortMBByColor();
	cardLayer.removeChildren();
	loadAllCards();
};


function sortByCMC()
{
	sortSBByCMC();
	sortMBByCMC();
	cardLayer.removeChildren();
	loadAllCards();
};

function sortByRarity()
{
	sortSBByRarity();
	sortMBByRarity();
	cardLayer.removeChildren();
	loadAllCards();
};

//call this function upon receiving of cards
function initCardDisplay()
{
	//init
	totalCardNumber = mainBoardCards.length + sideBoardCards.length;
	sbCards = sideBoardCards;
	mbCards = mainBoardCards;
	stage.get("#cardCountSBText")[0].setText(sbCards.length.toString());
	stage.get("#cardCountMBText")[0].setText(mbCards.length.toString());
	layer.draw();
	sortByColor();
};
window.addEventListener("load",loadFixedFrames);
