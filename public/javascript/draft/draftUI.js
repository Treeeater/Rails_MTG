//helpers:
var landsVisual = {"plains":510,"island":550,"swamp":590,"mountain":630,"forest":670};
var middleMouseDown = false;
var originalTipImage = null;
totalSelectionCardNumber = 0;
totalSelectedCardNumber = 0;
totalReservedCardNumber = 0;
pickNumber = 0;
var addLands = function(l){
	var number = prompt("How many " + l + " do you want?");
	window[l] = number;
	if (stage.get("#"+l+"Number").length==0)
	{
		var landText = new Kinetic.Text({x: 70,y: landsVisual[l],text: number + " " + l,fontSize: 12,fontFamily: "Calibri", textFill: "green", align: "center", verticalAlign: "middle",id: l+"Number"});
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
};
//onload:
function loadFixedFrames() {
	var imgReady = 0;
	cardsForSelection = new Array();		//used to remember all cards so that we can clear them after the user select one.
	function testAndDraw(){
		layer.draw();
	}
	stage = new Kinetic.Stage({container: "container", width: 1280, height: 960});
	layer = new Kinetic.Layer();
	cardLayer = new Kinetic.Layer();
	SBCardLayer = new Kinetic.Layer();
	MBCardLayer = new Kinetic.Layer();
	//draw section division lines
	var greenLine = new Kinetic.Line({points: [240, 360, 1280, 360],stroke: "green",strokeWidth: 3,lineCap: "round",lineJoin: "round",
	});
	
	var greenLine2 = new Kinetic.Line({points: [920, 0, 920, 360],stroke: "green",strokeWidth: 3,lineCap: "round",lineJoin: "round",
	});
	
	var blueLine2 = new Kinetic.Line({points: [240, 0, 240, 960],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine3 = new Kinetic.Line({points: [0, 320, 240, 320],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine4 = new Kinetic.Line({points: [0, 360, 240, 360],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine5 = new Kinetic.Line({points: [0, 450, 240, 450],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine6 = new Kinetic.Line({points: [0, 490, 240, 490],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine7 = new Kinetic.Line({points: [150, 490, 150, 700],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine8 = new Kinetic.Line({points: [0, 700, 240, 700],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine9 = new Kinetic.Line({points: [0, 910, 240, 910],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	layer.add(greenLine);
	layer.add(greenLine2);
	layer.add(blueLine2);
	layer.add(blueLine3);
	layer.add(blueLine4);
	layer.add(blueLine5);
	layer.add(blueLine6);
	layer.add(blueLine7);
	layer.add(blueLine8);
	layer.add(blueLine9);
	
	//add timer
	var timerTitleText = new Kinetic.Text({x: 40,y: 335,text: "Time Remaining : ",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	layer.add(timerTitleText);
	//frequent redraw timer layer
	timerLayer = new Kinetic.Layer();
	var timerText = new Kinetic.Text({x: 170,y: 335,text: "15:00",fontSize: 12,fontFamily: "Calibri",textFill: "green",align: "center",verticalAlign: "middle",id: "timerText"
	});
	timer = 60;
	timerLayer.add(timerText);
	setInterval("timeDown();",1000);
	//add rendered card count:
	var downloadedCardNoText = new Kinetic.Text({x: 30,y: 920, text: "Card downloaded: 00/00",fontSize: 13,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle", id: "downloadedCardInfoText"});
	layer.add(downloadedCardNoText);
	var draftInfoText = new Kinetic.Text({x: 20,y: 940,text: "This is a ",fontSize: 13,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle", id: "draftInfoText"});
	layer.add(draftInfoText);
	//cardback
	var imageObj = new Image();
	imageObj.onload = function() {
		var image = new Kinetic.Image({x: 0,y: 0,image: imageObj,width: 240,height: 320,id: "detailed"});
		layer.add(image);
		
		//image tooltip helper (middle button)
		var imageTooltip = new Kinetic.Image({x: 0,y: 0,image: imageObj,width: 240,height: 320,visible: false,id: "tooltip"
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
		var image = new Kinetic.Image({x: 20,y: 500,image: imageObj2,width: 30,height: 33});
		layer.add(image);
		testAndDraw();
	}
	var imageObj3 = new Image();
	imageObj3.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 540,image: imageObj3,width: 30,height: 33});
		layer.add(image);
		testAndDraw();
	}
	var imageObj4 = new Image();
	imageObj4.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 580,image: imageObj4,width: 30,height: 33});
		layer.add(image);
		testAndDraw();
	}
	var imageObj5 = new Image();
	imageObj5.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 620,image: imageObj5,width: 30,height: 33});
		layer.add(image);
		testAndDraw();
	}
	var imageObj6 = new Image();
	imageObj6.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 660,image: imageObj6,width: 30,height: 33});
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
			var cardsCountText = new Kinetic.Text({x: 165,y: colorsVisual[i], text: "0 " + i + " cards",fontSize: 12,fontFamily: "Calibri",textFill: "green",align: "center",verticalAlign: "middle",id: i+"Number"});
			layer.add(cardsCountText);
		}
	}
	//sort buttons
	//sort by color
	var buttonSortColor = new Kinetic.Rect({x: 30,y: 380,width: 80,height: 20,fill: "#00D2FF",stroke: "black",strokeWidth: 2
	});
	layer.add(buttonSortColor);
	var buttonSortColorText = new Kinetic.Text({x: 40,y: 385,text: "ColorSort",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	buttonSortColorText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortColorText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortColorText.on("click",sortByColor);
	buttonSortColorText.on("tap",sortByColor);
	layer.add(buttonSortColorText);
	
	//sort by cmc
	var buttonSortCMC = new Kinetic.Rect({x: 130,y: 380,width: 80,height: 20,fill: "#00D2FF",stroke: "black",strokeWidth: 2
	});
	layer.add(buttonSortCMC);
	var buttonSortCMCText = new Kinetic.Text({x: 140,y: 385,text: "CMCSort",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	buttonSortCMCText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortCMCText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortCMCText.on("click",sortByCMC);//sortByCMC;
	buttonSortCMCText.on("tap",sortByCMC);//sortByCMC;
	layer.add(buttonSortCMCText);
	
	//sort by rarity

	var buttonSortRarity = new Kinetic.Rect({x: 30,y: 410,width: 80,height: 20,fill: "#00D2FF",stroke: "black",strokeWidth: 2
	});
	layer.add(buttonSortRarity);
	var buttonSortRarityText = new Kinetic.Text({x: 38,y: 415,text: "RaritySort",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	buttonSortRarityText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonSortRarityText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonSortRarityText.on("click",sortByRarity);//sortByCMC;
	buttonSortRarityText.on("tap",sortByRarity);//sortByCMC;
	layer.add(buttonSortRarityText);

	//add land button
	
	var buttonAddLand = new Kinetic.Rect({x: 130,y: 410,width: 80,height: 20,fill: "#FFFF00",stroke: "black",strokeWidth: 2
	});
	layer.add(buttonAddLand);
	var buttonAddLandText = new Kinetic.Text({x: 138,y: 415,text: "Time out!",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	buttonAddLandText.on("mouseover",function(){document.body.style.cursor = "pointer";});
	buttonAddLandText.on("mouseout",function(){document.body.style.cursor = "default";});
	buttonAddLandText.on("click",function(){alert("Time out not implemented!")});
	layer.add(buttonAddLandText);
	
	//card count
	var cardCountHardCodedText = new Kinetic.Text({x: 20,y: 465,text: "Main board:        Current Pick:",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"
	});
	layer.add(cardCountHardCodedText);

	var cardCountMBText = new Kinetic.Text({x: 100,y: 465,text: "",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id: "cardCountMBText"
	});
	layer.add(cardCountMBText);

	var cardCountSBText = new Kinetic.Text({x: 215,y: 465,text: "",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id: "cardCountSBText"
	});
	layer.add(cardCountSBText);

	//round table:
	var roundTable = new Kinetic.Circle({x:120, y: 800, radius:50, fill: "white", stroke: "black", strokeWidth:1, id:"roundTable"});
	layer.add(roundTable);
	var roundTablePlayers = new Array();
	for (i = 0; i < 8; i++)
	{
		roundTablePlayers[i] = new Kinetic.Circle({x:120 + 75 * Math.sin(i*Math.PI/4), y: 800 - 75 * Math.cos(i*Math.PI/4), radius:10, fill: "gray", stroke: "black", strokeWidth:1, id:"roundTablePlayers"+i.toString()});
		layer.add(roundTablePlayers[i]);
	}	
	//playerNameBox
	var playerNameBox = new Kinetic.Rect({x: 0,y: 0,width: 40,height: 20, visible:false, fill: "white", stroke: "black", strokeWidth:1, id:"playerNameBox"});
	var playerNameBoxText = new Kinetic.Text({x:0, y:0, text:"", fontSize:12, fontFamily: "Calibri", textFill:"black", align: "center",verticalAlign: "middle", visible: false, id:"playerNameBoxText"});
	layer.add(playerNameBox);
	layer.add(playerNameBoxText);
	var submitConfirmationBox = new Kinetic.Rect({x: 585,y: 400,width: 200,height: 50, visible:false, fill: "white", stroke: "black", strokeWidth:1, id:"submitConfirmationBox"});
	var submitConfirmationBoxText = new Kinetic.Text({x:600, y:420, text:"Submission received", fontSize:16, fontFamily: "Calibri", textFill:"black", align: "center",verticalAlign: "middle", visible: false, id:"submitConfirmationBoxText"});
	layer.add(submitConfirmationBox);
	layer.add(submitConfirmationBoxText);
	//finalize
	stage.add(timerLayer);
	stage.add(cardLayer);
	stage.add(MBCardLayer);
	stage.add(SBCardLayer);
	stage.add(layer);
	document.getElementById('container').firstChild.lastChild.oncontextmenu = function() {
		return false;
	}
	//this prevents doubleclick selecting all outside text.
	document.getElementById('container').firstChild.lastChild.onselectstart = function () { return false; }
};

function sortSBByCMC()
{
	var c = new Array();
	var i=0;
	for (i = 0; i < 30; i++) c[i] = 0;
	sbDisplayOrderArray = new Array();
	for (i in sbCards){
		c[sbCards[i].card.cmc] ++;
	}
	for (i in c)
	{
		if (i!=0) c[i]+=c[i-1];
	}
	c0 = 0;
	for (i in sbCards)
	{
		if (sbCards[i].card.cmc==0) {
			sbCards[i].displayOrder = c0;
			sbDisplayOrderArray[c0] = i;
			c0++;
		}
		else {
			sbCards[i].displayOrder = c[sbCards[i].card.cmc-1];
			sbDisplayOrderArray[c[sbCards[i].card.cmc-1]] = i;
			c[sbCards[i].card.cmc-1]++;
		}
	}
};

function sortMBByCMC()
{
	var c = new Array();
	var i=0;
	for (i = 0; i < 30; i++) c[i] = 0;
	mbDisplayOrderArray = new Array();
	for (i in mbCards){
		c[mbCards[i].card.cmc] ++;
	}
	for (i in c)
	{
		if (i!=0) c[i]+=c[i-1];
	}
	c0 = 0;
	for (i in mbCards)
	{
		if (mbCards[i].card.cmc==0) {
			mbCards[i].displayOrder = c0;
			mbDisplayOrderArray[c0] = i;
			c0++;
		}
		else {
			mbCards[i].displayOrder = c[mbCards[i].card.cmc-1];
			mbDisplayOrderArray[c[mbCards[i].card.cmc-1]] = i;
			c[mbCards[i].card.cmc-1]++;
		}
	}
};

function sortSBByColor()
{
	var i;
	var w=u=b=r=g=a=0;
	sbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in sbCards){
		switch (sbCards[i].card.color){
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
		switch (sbCards[i].card.color){
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
};

function sortMBByColor()
{
	var i;
	var w=u=b=r=g=a=0;
	mbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in mbCards){
		switch (mbCards[i].card.color){
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
		switch (mbCards[i].card.color){
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
};

function sortSBByRarity()
{
	var i;
	var c=u=r=m=0;
	sbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in sbCards){
		switch (sbCards[i].card.rarity){
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
		switch (sbCards[i].card.rarity){
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
};

function sortMBByRarity()
{
	var i;
	var c=u=r=m=0;
	mbDisplayOrderArray = new Array();
	//get the total number of wubrgas
	for (i in mbCards){
		switch (mbCards[i].card.rarity){
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
		switch (mbCards[i].card.rarity){
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
};

function loadAllSBCards()
{
	//load selection pool first.
	var startX = 250;
	var startY = 370;
	var i,d;
	selectionCardsLoaded = 0;
	for (d in sbDisplayOrderArray)
	{
		i = sbDisplayOrderArray[d];
		(function (X,Y,I){
			var displayOrder = sbCards[I].displayOrder;
			var imageObj = new Image();
			imageObj.onload = function() {
				var image = new Kinetic.Image({x: X + Math.floor(displayOrder/2) * 128,y: Y + (displayOrder%2) * 170,image: imageObj,width: 120,height: 160,draggable: true,
				dragBoundFunc: function(pos) {
					var newY = pos.y < 370 ? 370 : pos.y;
					newY = newY > 770 ? 770 : newY;
					var newX = pos.x < 250 ? 250 : pos.x;
					newX = newX > 1160 ? 1160 : newX;
					return {
					  x: newX,
					  y: newY
					};
				},
				id: "card"+sbCards[I].uid.toString()});
				cardsForSelection.push(image);
				image.cuid = sbCards[I].uid;
				image.cname = sbCards[I].card.cardName;
				image.on("mouseover",function(){
					stage.get("#detailed")[0].setImage(imageObj);
					layer.draw();
					if (middleMouseDown)
					{
						var imageTooltip = stage.get("#tooltip")[0];
						var p = image.getPosition();
						if (p.x<900){
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
				image.on("tap", function(){
					stage.get("#detailed")[0].setImage(imageObj);
					layer.draw();
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
						if (p.x<900){
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
				});
				image.on('dbltap',function(evt) {
					evt.stopPropagation();
					evt.preventDefault(evt);
					evt.cancelBubble = true;
					selectCard(image.cuid);
					SBCardLayer.draw();
					return false;
				});
				image.on('dblclick', function(evt) {
					//console.log('dblclicked');
					if (evt.which==1){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						selectCard(image.cuid);
						SBCardLayer.draw();
					}
					return false;
				});
				SBCardLayer.add(image);
				selectionCardsLoaded++;
				updateDownloadedCardInfo(selectionCardsLoaded,totalSelectionCardNumber);
				if (selectionCardsLoaded == totalSelectionCardNumber) reLayerSBCards();
			}
			if (window.webkitRequestFileSystem){
				renderCard(sbCards[I].card.idInSet, sbCards[I].card.expansion, imageObj);
			}
			else{
				if (ENV_Language == "cn") {imageObj.src = sbCards[I].card.chiSRC;}
				else {imageObj.src = sbCards[I].card.engSRC;}
			}
		})(startX,startY,i);
	}
};


function loadAllMBCards()
{
	//reset color counter
	colorCardsNumber["G"]=colorCardsNumber["R"]=colorCardsNumber["B"]=colorCardsNumber["U"]=colorCardsNumber["W"]=0;
	//load card pool second.
	startX = 250;
	startY = 5;
	var i=d=0;
	var dm=dr=-1;
	selectedCardsLoaded = 0;
	for (d in mbDisplayOrderArray)
	{
		i = mbDisplayOrderArray[d];
		var reserved;
		if (mbCards[i].reserved) {reserved = true; dr++} else {reserved = false; dm++;}
		(function (X,Y,I,R,DR,DM){
			//var displayOrder = mbCards[I].displayOrder;
			var imageObj = new Image();
			imageObj.onload = function() {
				var image;
				if (R)
				{
					image = new Kinetic.Image({
						x: X + 680 + Math.floor(DR/11) * 128,
						y: Y + (DR%11) * 18,
						image: imageObj,
						width: 120,
						height: 160,
						draggable: true,
						dragBoundFunc: function(pos) {
							var newY = pos.y < 5 ? 5 : pos.y;
							newY = newY > 200 ? 200 : newY;
							var newX = pos.x < 920 ? 920 : pos.x;
							newX = newX > 1160 ? 1160 : newX;
							return {
							  x: newX,
							  y: newY
							};
						},
						id: "card"+mbCards[I].uid.toString()
					});
				}
				else {
					image = new Kinetic.Image({
						x: X + Math.floor(DM/11) * 128,
						y: Y + (DM%11) * 18,
						image: imageObj,
						width: 120,
						height: 160,
						draggable: true,
						dragBoundFunc: function(pos) {
							var newY = pos.y < 5 ? 5 : pos.y;
							newY = newY > 200 ? 200 : newY;
							var newX = pos.x < 250 ? 250 : pos.x;
							newX = newX > 800 ? 800 : newX;
							return {
							  x: newX,
							  y: newY
							};
						},
						id: "card"+mbCards[I].uid.toString()
					});
				}
				image.cuid = mbCards[I].uid;
				image.cname = mbCards[I].card.cardName;
				image.on("mouseover",function(){
					stage.get("#detailed")[0].setImage(imageObj);
					layer.draw();
					if (middleMouseDown)
					{
						var imageTooltip = stage.get("#tooltip")[0];
						var p = image.getPosition();
						if (p.x<900){
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
				image.on("tap", function(){
					stage.get("#detailed")[0].setImage(imageObj);
					layer.draw();
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
						if (p.x<900){
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
				image.on('dbltap',function(evt) {
					evt.stopPropagation();
					evt.preventDefault(evt);
					evt.cancelBubble = true;
					if (R) removeCardFromReserved(image.cuid); else moveCardToReserved(image.cuid);
					return false;
				});
				image.on('dblclick', function(evt) {
					//console.log('dblclicked');
					if (evt.which==1){
						evt.stopPropagation();
						evt.preventDefault(evt);
						evt.cancelBubble = true;
						if (R) removeCardFromReserved(image.cuid); else moveCardToReserved(image.cuid);
					}
					return false;
				});
				MBCardLayer.add(image);
				selectedCardsLoaded++;
				if (selectedCardsLoaded == totalSelectedCardNumber) reLayerMBCards();
			}
			if (R!=true)
			{
				colorCardsNumber["G"]+=((mbCards[I].card.color&1)==1?1:0);
				colorCardsNumber["R"]+=((mbCards[I].card.color&2)==2?1:0);
				colorCardsNumber["B"]+=((mbCards[I].card.color&4)==4?1:0);
				colorCardsNumber["U"]+=((mbCards[I].card.color&8)==8?1:0);
				colorCardsNumber["W"]+=((mbCards[I].card.color&16)==16?1:0);
			}
			if (window.webkitRequestFileSystem){
				renderCard(mbCards[I].card.idInSet, mbCards[I].card.expansion, imageObj);
			}
			else{
				if (ENV_Language == "cn") {imageObj.src = mbCards[I].card.chiSRC;}
				else {imageObj.src = mbCards[I].card.engSRC;}
			}
		})(startX,startY,i,reserved,dr,dm);
	}
	stage.get("#WNumber")[0].setText(colorCardsNumber['W'].toString() + " " + 'W' + " cards");
	stage.get("#UNumber")[0].setText(colorCardsNumber['U'].toString() + " " + 'U' + " cards");
	stage.get("#BNumber")[0].setText(colorCardsNumber['B'].toString() + " " + 'B' + " cards");
	stage.get("#RNumber")[0].setText(colorCardsNumber['R'].toString() + " " + 'R' + " cards");
	stage.get("#GNumber")[0].setText(colorCardsNumber['G'].toString() + " " + 'G' + " cards");
	layer.draw();
};

function countMBCards()
{
	//this returns the cards that are not reserved.
	var count = 0;
	for (i in mbCards)
	{
		if (mbCards[i].reserved) continue;
		count++;
	}
	return count.toString();
};

function selectCard(cuid)
{
	pickNumber++;
	totalSelectedCardNumber++;
	//back end representation move
	for (i in sbCards)
	{
		if (sbCards[i].uid == cuid) break;
	}
	var thisCard = sbCards[i];
	submitCard(thisCard);
	for (i in cardsForSelection)
	{
		//SBCardLayer.remove(cardsForSelection[i]);		//visually all cards in selection area.
		cardsForSelection[i].remove();
	}
	cardsForSelection = new Array();			//empty the array.
	mbCards.push(thisCard);
	stage.get("#cardCountMBText")[0].setText(countMBCards());
	stage.get("#cardCountSBText")[0].setText((15-sbCards.length).toString());
	sbCards = new Array();
	sortByRarity();
};

function moveCardToReserved(cuid)
{
	for (i in mbCards)
	{
		if (mbCards[i].uid == cuid) break;
	}
	var thisCard = mbCards[i];
	thisCard.reserved = true;
	stage.get("#cardCountMBText")[0].setText(countMBCards());
	sortMBByRarity();
	MBCardLayer.removeChildren();
	loadAllMBCards();
};

function removeCardFromReserved(cuid)
{
	for (i in mbCards)
	{
		if (mbCards[i].uid == cuid) break;
	}
	var thisCard = mbCards[i];
	thisCard.reserved = false;
	stage.get("#cardCountMBText")[0].setText(countMBCards());
	sortMBByRarity();
	MBCardLayer.removeChildren();
	loadAllMBCards();
};

function reLayerMBCards()
{
	var dm=dr=-1;
	for (d in mbDisplayOrderArray)
	{
		i = mbDisplayOrderArray[d];
		if (mbCards[i].reserved) 
		{	
			dr++;
			stage.get("#card"+mbCards[i].uid.toString())[0].setZIndex( dr % 11);
		}
		else {
			dm++;
			stage.get("#card"+mbCards[i].uid.toString())[0].setZIndex( dm % 11);
		}
	}
	MBCardLayer.draw();
};

function reLayerSBCards()
{
	for (d in sbDisplayOrderArray)
	{
		i = sbDisplayOrderArray[d];
		stage.get("#card"+sbCards[i].uid.toString())[0].setZIndex( sbCards[i].displayOrder % 11);
	}
	SBCardLayer.draw();
};

function sortByColor()
{
	sortSBByColor();
	sortMBByColor();
	SBCardLayer.removeChildren();
	MBCardLayer.removeChildren();
	loadAllSBCards();
	loadAllMBCards();
};


function sortByCMC()
{
	sortSBByCMC();
	sortMBByCMC();
	SBCardLayer.removeChildren();
	MBCardLayer.removeChildren();
	loadAllSBCards();
	loadAllMBCards();
};

function sortByRarity()
{
	sortSBByRarity();
	sortMBByRarity();
	SBCardLayer.removeChildren();
	MBCardLayer.removeChildren();
	loadAllSBCards();
	loadAllMBCards();
};

//call this function upon receiving of cards
function refreshSelectionDisplay()
{
	//init
	stage.get("#cardCountSBText")[0].setText((15-sbCards.length).toString());
	layer.draw();
	sortSBByRarity();
	SBCardLayer.removeChildren();
	loadAllSBCards();
	log('Info : pack rendered. Please build your deck before the time runs out.\n\n');
};

//call this function upon receiving of cards
function refreshSelectedDisplay()
{
	//init
	stage.get("#cardCountMBText")[0].setText(countMBCards());
	layer.draw();
	sortMBByRarity();
	MBCardLayer.removeChildren();
	loadAllMBCards();
	log('Info : selected rendered. Please build your deck before the time runs out.\n\n');
};

function showPlayerName(usrname, x, y)
{
	stage.get("#playerNameBox")[0].attrs.x = x;
	stage.get("#playerNameBox")[0].attrs.y = y;
	stage.get("#playerNameBoxText")[0].attrs.x = x+5;
	stage.get("#playerNameBoxText")[0].attrs.y = y;
	stage.get("#playerNameBoxText")[0].setText(usrname);
	stage.get("#playerNameBox")[0].attrs.visible = true;
	stage.get("#playerNameBoxText")[0].attrs.visible = true;
	layer.draw();
};

function hidePlayerName(usrname, x, y)
{
	stage.get("#playerNameBox")[0].attrs.visible = false;
	stage.get("#playerNameBoxText")[0].attrs.visible = false;
	layer.draw();
};

function showSubmissionACKBox()
{
	stage.get("#submitConfirmationBoxText")[0].attrs.visible = true;
	stage.get("#submitConfirmationBox")[0].attrs.visible = true;
	layer.draw();
};

function hideSubmissionACKBox()
{
	stage.get("#submitConfirmationBoxText")[0].attrs.visible = false;
	stage.get("#submitConfirmationBox")[0].attrs.visible = false;
	layer.draw();
};

function changeAllGreenToYellow()
{
	var i = 0;
	for (;i<8;i++)
	{
		if (stage.get("#roundTablePlayers"+i.toString())[0].getFill()=='green')	stage.get("#roundTablePlayers"+i.toString())[0].setFill('yellow');
	}
	layer.draw();
};

function changeYellowToGreen(i)
{
	if (stage.get("#roundTablePlayers"+i)[0])
	{
		stage.get("#roundTablePlayers"+i)[0].setFill('green');
		layer.draw();
	}
};

function updateDraftInfo(info)
{
	stage.get("#draftInfoText")[0].setText("This is a "+info+" draft.");
	layer.draw();
};

function updateDownloadedCardInfo(a,b)
{
	stage.get("#downloadedCardInfoText")[0].setText("Card downloaded: " + ((a>=10)?"":"0") + a.toString() + "/" + ((b>=10)?"":"0") + b.toString());
	layer.draw();
};

if (!window.requestFileSystem) window.addEventListener("load",loadFixedFrames);
