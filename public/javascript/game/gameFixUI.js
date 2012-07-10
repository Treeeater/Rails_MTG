//helpers:
var chooseColorVisual = function(l){
	var xx,yy;
	switch (l){
		case "plains":
			xx = 20;
			yy = 500;
			break;
		case "island":
			xx = 20;
			yy = 540;
			break;
		case "swamp":
			xx = 20;
			yy = 580;
			break;
		case "mountain":
			xx = 20;
			yy = 620;
			break;
		case "forest":
			xx = 20;
			yy = 660;
			break;
		default:
	}
	var tickImage = new Image();
	tickImage.onload = function() {
		var image = new Kinetic.Image({x: xx, y: yy, image: tickImage, width: 30, height: 30, id: "tickImage"+l});
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		image.on("click",removeColorBE.bind(window,l))
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	tickImage.src = hostServerAddress+"assets/game/general/greenTick.png";
};
var removeColorVisual = function (l){FixedLayer.remove(stage.get("#tickImage"+l)[0]);FixedLayer.draw();};

var choosePhaseVisual = function(l){
	if (cur_phase!=undefined) cur_phase.attrs.fill = "#99FF99";
	stage.get("#"+l)[0].attrs.fill = "#00FFFF";
	cur_phase = stage.get("#"+l)[0];
	FixedLayer.draw();
};

var adjustLifeTotalVisual = function(l,me){
	if (me) stage.get("#yourLife")[0].setText("Your life: "+l);
	else stage.get("#oppoLife")[0].setText("Oppo life: "+l);
	FixedLayer.draw();
};

var adjustOppoHandCardVisual = function(l){
	stage.get("#oppoHandCardCountText")[0].setText(l.toString());
	FixedLayer.draw();
}

var drawCardsVisual = function(s){
	if (s.uid == myUID)
	{
		var drawnCards = JSON.parse(s.body);
		log(s.username + " drawed " + drawnCards.length.toString() + " card(s).\n\n");
		var i = 0;
		for (i = 0; i<drawnCards.length; i++)
		{
			displayCard(drawnCards[i]);
		}
	}
	else{
		//oppo drawed some cards, we need to update oppo hand card number
		//array of two elements are passed back, the first contains the number of cards drawn, the second contains all the cards in oppo's hand.
		var drawnCards = JSON.parse(s.body);
		log(s.username + " drawed " + drawnCards[0] + " card(s).\n\n");
		adjustOppoHandCardVisual(drawnCards[1])
	}
};

var dragEndBattlefieldCardVisual = function (card)
{
	//oppo's card, we should do the conversion.
	if (stage.get("#battlefieldCard"+card.cardID).length>0)
	{
		stage.get("#battlefieldCard"+card.cardID)[0].setX(card.position.x);
		stage.get("#battlefieldCard"+card.cardID)[0].setY((700-card.position.y) - card.position.scaleY);
	}
	VisibleCardLayer.draw();
}

var clickOwnLibrary = function (evt){
	var drawACard = function(){
		//log("drawed a card");
		drawCardsBE(1);
		clickedContextHiddenBox();
	};
	var drawXCard = function(){
		//log("drawed x card");
		var x = prompt("How many cards would you like to draw?");
		x = parseInt(x);
		if (x!=NaN) drawCardsBE(x);
		clickedContextHiddenBox();
	};
	var peekCards = function(){
		log("peeked x card");
		clickedContextHiddenBox();
	};
	var shuffle = function(){
		log("shuffled");
		clickedContextHiddenBox();
	};
	items = [{text:"draw a card",func:drawACard},{text:"draw x cards",func:drawXCard},{text:"look at the top x card",func:peekCards},{text:"shuffle library",func:shuffle}];
	mousePosition = stage.getMousePosition();
	x = mousePosition.x;
	y = mousePosition.y;
	if (evt.which == 3)
	{
		//right click
		createContextMenu(x,y,items);
	}
	if (evt.which == 1)
	{
		//left click
		drawCardsBE(1);
	}
}

var rightClickOwnLifeBox = function (evt){
	var add1Life = function(){
		adjustLifeTotalBE(1);
		clickedContextHiddenBox();
	};
	var deduct1Life = function(){
		adjustLifeTotalBE(-1);
		clickedContextHiddenBox();
	};
	var addXLife = function(){
		var x = prompt("How many life do you want to gain?");
		x = parseInt(x);
		if (x!=NaN) adjustLifeTotalBE(x);
		clickedContextHiddenBox();
	};
	var deductXLife = function(){
		var x = prompt("How many life do you want to deduct?");
		x = parseInt(x);
		if (x!=NaN) adjustLifeTotalBE(-x);
		clickedContextHiddenBox();
	};
	items = [{text:"Add 1 life",func:add1Life},{text:"Deduct 1 life",func:deduct1Life},{text:"Add X life",func:addXLife},{text:"Deduct X life",func:deductXLife}];
	mousePosition = stage.getMousePosition();
	x = mousePosition.x;
	y = mousePosition.y;
	if (evt.which == 3)
	{
		//right click
		createContextMenu(x,y,items);
	}
}


//onload:
function loadFixedFrames() {
	middleMouseDown = false;
	originalTipImage = null;
	downLayer = null;
	stage = new Kinetic.Stage({container: "container",width: 1280,height: 900});
	FixedLayer = new Kinetic.Layer();
	VisibleCardLayer = new Kinetic.Layer();
	ContextLayer = new Kinetic.Layer();
	//draw section division lines
	var blueLine = new Kinetic.Line({points: [240, 330, 1280, 330],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round",});
	
	var blueLine2 = new Kinetic.Line({points: [240, 0, 240, 900],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine3 = new Kinetic.Line({points: [0, 320, 240, 320],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine4 = new Kinetic.Line({points: [240, 370, 1280, 370],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});
	
	var blueLine5 = new Kinetic.Line({points: [0, 450, 240, 450],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine6 = new Kinetic.Line({points: [0, 490, 240, 490],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine7 = new Kinetic.Line({points: [70, 490, 70, 900],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine8 = new Kinetic.Line({points: [0, 700, 1280, 700],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	var blueLine9 = new Kinetic.Line({points: [120, 450, 120, 490],stroke: "blue",strokeWidth: 3,lineCap: "round",lineJoin: "round"
	});

	FixedLayer.add(blueLine);
	FixedLayer.add(blueLine2);
	FixedLayer.add(blueLine3);
	FixedLayer.add(blueLine4);
	FixedLayer.add(blueLine5);
	FixedLayer.add(blueLine6);
	FixedLayer.add(blueLine7);
	FixedLayer.add(blueLine8);
	FixedLayer.add(blueLine9);
	
	
	var contextMenuHiddenBox = new Kinetic.Rect({x: 0, y: 0, width: 1280, height: 900, stroke: "black",strokeWidth: 0,id: "contextMenuHiddenBox"});
	contextMenuHiddenBox.on("click",clickedContextHiddenBox);
	FixedLayer.add(contextMenuHiddenBox);
	//cardback
	var imageObj = new Image();
	imageObj.onload = function() {
		var image = new Kinetic.Image({x: 0,y: 0,image: imageObj,width: 240,height: 320,id: "detailed"});
		FixedLayer.add(image);
		var imageTooltip = new Kinetic.Image({x: 0,	y: 0, image: imageObj, width: 240, height: 320, visible: false, id: "tooltip"});
		ContextLayer.add(imageTooltip);
		imageTooltip.setZIndex(99999);
		FixedLayer.draw();
	}
	//
	//five basic lands
	plains=island=swamp=mountain=forest=0;
	var imageObj2 = new Image();
	imageObj2.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 500,image: imageObj2,width: 30,height: 33});
		image.on("click",chooseColorBE.bind(window,"plains"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	var imageObj3 = new Image();
	imageObj3.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 540,image: imageObj3,width: 30,height: 33});
		image.on("click",chooseColorBE.bind(window,"island"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	var imageObj4 = new Image();
	imageObj4.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 580,image: imageObj4,width: 30,height: 33});
		image.on("click",chooseColorBE.bind(window,"swamp"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	var imageObj5 = new Image();
	imageObj5.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 620,image: imageObj5,width: 30,height: 33});
		image.on("click",chooseColorBE.bind(window,"mountain"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	var imageObj6 = new Image();
	imageObj6.onload = function() {
		var image = new Kinetic.Image({x: 20,y: 660,image: imageObj6,width: 30,height: 33});
		image.on("click",chooseColorBE.bind(window,"forest"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	imageObj.src = hostServerAddress+"assets/mtg/general/back.jpg";
	imageObj2.src = hostServerAddress+"assets/mtg/general/white.png";
	imageObj3.src = hostServerAddress+"assets/mtg/general/blue.png";
	imageObj4.src = hostServerAddress+"assets/mtg/general/black.png";
	imageObj5.src = hostServerAddress+"assets/mtg/general/red.png";
	imageObj6.src = hostServerAddress+"assets/mtg/general/green.png";

//life points text
	var lifeText1 = new Kinetic.Text({x: 20, y: 465,text: "Your life: 20",fontSize: 12,fontFamily: "Calibri",textFill: "green",align: "center",verticalAlign: "middle",id: "yourLife"});
	var lifeTextBox = new Kinetic.Rect({x: 0,y: 450,width: 120,height: 40 ,stroke: "black",strokeWidth: 0,id: "lifeTextBox"});
	lifeText1.on("click",rightClickOwnLifeBox);
	lifeTextBox.on("click",rightClickOwnLifeBox);
	FixedLayer.add(lifeTextBox);
	FixedLayer.add(lifeText1);

	var lifeText2 = new Kinetic.Text({x: 140,y: 465,text: "Oppo life: 20",fontSize: 12,fontFamily: "Calibri",textFill: "red",align: "center",verticalAlign: "middle",id: "oppoLife"});
	FixedLayer.add(lifeText2);

//Phases:
	var upkeepPhase = new Kinetic.Text({x: 277,y: 345,text: "Upkeep",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var upkeepPhaseBox = new Kinetic.Rect({x: 260,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "upkeepPhaseBox"});
	upkeepPhase.on("click",choosePhaseBE.bind(window,"upkeepPhaseBox"));
	upkeepPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	upkeepPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	upkeepPhaseBox.on("click",choosePhaseBE.bind(window,"upkeepPhaseBox"));
	upkeepPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	upkeepPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(upkeepPhaseBox);
	FixedLayer.add(upkeepPhase);

	var drawPhase = new Kinetic.Text({x: 385,y: 345,text: "Draw",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var drawPhaseBox = new Kinetic.Rect({x: 360,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "drawPhaseBox"});
	drawPhase.on("click",choosePhaseBE.bind(window,"drawPhaseBox"));
	drawPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	drawPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	drawPhaseBox.on("click",choosePhaseBE.bind(window,"drawPhaseBox"));
	drawPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	drawPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(drawPhaseBox);
	FixedLayer.add(drawPhase);

	var mainPhase1 = new Kinetic.Text({x: 477,y: 345,text: "Main 1",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var mainPhase1Box = new Kinetic.Rect({x: 460,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "mainPhase1Box"});
	mainPhase1.on("click",choosePhaseBE.bind(window,"mainPhase1Box"));
	mainPhase1.on("mouseover",function(){document.body.style.cursor = "pointer";});
	mainPhase1.on("mouseout",function(){document.body.style.cursor = "default";});
	mainPhase1Box.on("click",choosePhaseBE.bind(window,"mainPhase1Box"));
	mainPhase1Box.on("mouseover",function(){document.body.style.cursor = "pointer";});
	mainPhase1Box.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(mainPhase1Box);
	FixedLayer.add(mainPhase1);

	var BeginCombatPhase = new Kinetic.Text({x: 570,y: 345,text: "Beg.Cmbt",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var BeginCombatPhaseBox = new Kinetic.Rect({x: 560,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "BeginCombatPhaseBox"});
	BeginCombatPhase.on("click",choosePhaseBE.bind(window,"BeginCombatPhaseBox"));
	BeginCombatPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	BeginCombatPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	BeginCombatPhaseBox.on("click",choosePhaseBE.bind(window,"BeginCombatPhaseBox"));
	BeginCombatPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	BeginCombatPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(BeginCombatPhaseBox);
	FixedLayer.add(BeginCombatPhase);

	var DeclareAttackerPhase = new Kinetic.Text({x: 677,y: 345,text: "Dec.Att",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var DeclareAttackerPhaseBox = new Kinetic.Rect({x: 660,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "DeclareAttackerPhaseBox"});
	DeclareAttackerPhase.on("click",choosePhaseBE.bind(window,"DeclareAttackerPhaseBox"));
	DeclareAttackerPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	DeclareAttackerPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	DeclareAttackerPhaseBox.on("click",choosePhaseBE.bind(window,"DeclareAttackerPhaseBox"));
	DeclareAttackerPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	DeclareAttackerPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(DeclareAttackerPhaseBox);
	FixedLayer.add(DeclareAttackerPhase);

	var DeclareDefenderPhase = new Kinetic.Text({x: 775,y: 345,text: "Dec.Def",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var DeclareDefenderPhaseBox = new Kinetic.Rect({x: 760,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "DeclareDefenderPhaseBox"});
	DeclareDefenderPhase.on("click",choosePhaseBE.bind(window,"DeclareDefenderPhaseBox"));
	DeclareDefenderPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	DeclareDefenderPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	DeclareDefenderPhaseBox.on("click",choosePhaseBE.bind(window,"DeclareDefenderPhaseBox"));
	DeclareDefenderPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	DeclareDefenderPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(DeclareDefenderPhaseBox);
	FixedLayer.add(DeclareDefenderPhase);

	var EndCombatPhase = new Kinetic.Text({x: 870,y: 345,text: "End.Cmbt",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var EndCombatPhaseBox = new Kinetic.Rect({x: 860,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "EndCombatPhaseBox"});
	EndCombatPhase.on("click",choosePhaseBE.bind(window,"EndCombatPhaseBox"));
	EndCombatPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	EndCombatPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	EndCombatPhaseBox.on("click",choosePhaseBE.bind(window,"EndCombatPhaseBox"));
	EndCombatPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	EndCombatPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(EndCombatPhaseBox);
	FixedLayer.add(EndCombatPhase);

	var mainPhase2 = new Kinetic.Text({x: 977,y: 345,text: "Main 2",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var mainPhase2Box = new Kinetic.Rect({x: 960,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "mainPhase2Box"});
	mainPhase2.on("click",choosePhaseBE.bind(window,"mainPhase2Box"));
	mainPhase2.on("mouseover",function(){document.body.style.cursor = "pointer";});
	mainPhase2.on("mouseout",function(){document.body.style.cursor = "default";});
	mainPhase2Box.on("click",choosePhaseBE.bind(window,"mainPhase2Box"));
	mainPhase2Box.on("mouseover",function(){document.body.style.cursor = "pointer";});
	mainPhase2Box.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(mainPhase2Box);
	FixedLayer.add(mainPhase2);

	var endTurnPhase = new Kinetic.Text({x: 1072,y: 345,text: "End Turn",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var endTurnPhaseBox = new Kinetic.Rect({x: 1060,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "endTurnPhaseBox"});
	endTurnPhase.on("click",choosePhaseBE.bind(window,"endTurnPhaseBox"));
	endTurnPhase.on("mouseover",function(){document.body.style.cursor = "pointer";});
	endTurnPhase.on("mouseout",function(){document.body.style.cursor = "default";});
	endTurnPhaseBox.on("click",choosePhaseBE.bind(window,"endTurnPhaseBox"));
	endTurnPhaseBox.on("mouseover",function(){document.body.style.cursor = "pointer";});
	endTurnPhaseBox.on("mouseout",function(){document.body.style.cursor = "default";});
	FixedLayer.add(endTurnPhaseBox);
	FixedLayer.add(endTurnPhase);

//oppo library, grvy and exile

	var libraryImage = new Image();
	libraryImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 710,image: libraryImage,width: 50,height: 50,id: "libraryImage"});
		image.on("click",clickOwnLibrary);
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	libraryImage.src = hostServerAddress+"assets/game/general/library.jpg";
	var libraryCountText = new Kinetic.Text({x: 180,y: 730,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"libraryCountText"});
	FixedLayer.add(libraryCountText);

	var grvyImage = new Image();
	grvyImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 775,image: grvyImage,width: 50,height: 50,id: "grvyImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	grvyImage.src = hostServerAddress+"assets/game/general/grvy.jpg";
	var grvyCountText = new Kinetic.Text({x: 180,y: 795,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"grvyCountText"});
	FixedLayer.add(grvyCountText);

	var exileImage = new Image();
	exileImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 840,image: exileImage,width: 50,height: 50,id: "exileImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	exileImage.src = hostServerAddress+"assets/game/general/exile.jpg";
	var exileCountText = new Kinetic.Text({x: 180,y: 860,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"exileCountText"});
	FixedLayer.add(exileCountText);

//library, grvy and exile

	var oppoLibraryImage = new Image();
	oppoLibraryImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 495,image: oppoLibraryImage,width: 50,height: 50,id: "oppoLibraryImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoLibraryImage.src = hostServerAddress+"assets/game/general/library.jpg";
	var oppoLibraryCountText = new Kinetic.Text({x: 180,y: 515,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoLibraryCountText"});
	FixedLayer.add(oppoLibraryCountText);

	var oppoGrvyImage = new Image();
	oppoGrvyImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 545,image: oppoGrvyImage,width: 50,height: 50,id: "oppoGrvyImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoGrvyImage.src = hostServerAddress+"assets/game/general/grvy.jpg";
	var oppoGrvyCountText = new Kinetic.Text({x: 180,y: 565,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoGrvyCountText"});
	FixedLayer.add(oppoGrvyCountText);

	var oppoExileImage = new Image();
	oppoExileImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 595,image: oppoExileImage,width: 50,height: 50,id: "oppoExileImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoExileImage.src = hostServerAddress+"assets/game/general/exile.jpg";
	var oppoExileCountText = new Kinetic.Text({x: 180,y: 615,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoExileCountText"});
	FixedLayer.add(oppoExileCountText);

	var oppoHandCardImage = new Image();
	oppoHandCardImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 645,image: oppoHandCardImage,width: 50,height: 50,id: "oppoHandCardImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoHandCardImage.src = hostServerAddress+"assets/game/general/handCard.jpg";
	var oppoHandCardCountText = new Kinetic.Text({x: 180,y: 665,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoHandCardCountText"});
	FixedLayer.add(oppoHandCardCountText);
	cur_phase = undefined;
	//finalize
	stage.add(FixedLayer);
	stage.add(VisibleCardLayer);
	stage.add(ContextLayer);
	ContextLayer.draw();
	//this hidden box is for click detection, workaround for kineticjs not supporting 'on' method on layer
	FixedLayer.draw();
	document.getElementById('container').firstChild.children[4].oncontextmenu = function() {
		return false;
	}
	
	//call backend init
	initBackEndJS();
};

var polishImageHandler = function(image,imagePrimitive)
{
	image.on("mouseover",function(){
		stage.get("#detailed")[0].setImage(imagePrimitive);
		FixedLayer.draw();
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
			imageTooltip.setImage(imagePrimitive);
			imageTooltip.show();
			FixedLayer.draw();
			ContextLayer.draw();
		}
	});

	image.on("mouseout",function(evt){
		if (evt.which == 2){
			evt.stopPropagation();
			evt.preventDefault(evt);
			evt.cancelBubble = true;
			stage.get("#tooltip")[0].hide();
			if (originalTipImage) originalTipImage.setDraggable(true);		//the user may have moved the mouse when middle button is held, we need to reset the original tooltiped image, not this one.
			FixedLayer.draw();
			ContextLayer.draw();
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
			imageTooltip.setImage(imagePrimitive);
			imageTooltip.show();
			imageTooltip.moveToTop();
			FixedLayer.draw();
			ContextLayer.draw();
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
		FixedLayer.draw();
		ContextLayer.draw();
		return false;
	});
};

window.addEventListener("load",loadFixedFrames);
