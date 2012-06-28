//helpers:
var chooseColor = function(l){
};
//onload:
function loadFixedFrames() {
	stage = new Kinetic.Stage({
	  container: "container",
	  width: 1280,
	  height: 900
	});
	FixedLayer = new Kinetic.Layer();
	//draw section division lines
	var blueLine = new Kinetic.Line({
	  points: [240, 330, 1280, 330],
	  stroke: "blue",
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
	  points: [240, 370, 1280, 370],
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
	  points: [70, 490, 70, 900],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	var blueLine8 = new Kinetic.Line({
	  points: [0, 700, 1280, 700],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
	});

	var blueLine9 = new Kinetic.Line({
	  points: [120, 450, 120, 490],
	  stroke: "blue",
	  strokeWidth: 3,
	  lineCap: "round",
	  lineJoin: "round"
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
		FixedLayer.add(image);
		FixedLayer.draw();
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
		image.on("click",chooseColor.bind(window,"plains"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
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
		image.on("click",chooseColor.bind(window,"island"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
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
		image.on("click",chooseColor.bind(window,"swamp"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
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
		image.on("click",chooseColor.bind(window,"mountain"));
		image.on("mouseover",function(){document.body.style.cursor = "pointer";});
		image.on("mouseout",function(){document.body.style.cursor = "default";});
		FixedLayer.add(image);
		FixedLayer.draw();
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
		image.on("click",chooseColor.bind(window,"forest"));
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
	var lifeText1 = new Kinetic.Text({
	  x: 60,
	  y: 470,
	  text: "Your life: 20",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "green",
	  align: "center",
	  verticalAlign: "middle",
	  id: "yourLife"
	});
	FixedLayer.add(lifeText1);

	var lifeText2 = new Kinetic.Text({
	  x: 180,
	  y: 470,
	  text: "Oppo life: 20",
	  fontSize: 12,
	  fontFamily: "Calibri",
	  textFill: "red",
	  align: "center",
	  verticalAlign: "middle",
	  id: "oppoLife"
	});
	FixedLayer.add(lifeText2);


//Phases:
	var upkeepPhase = new Kinetic.Text({x: 300,y: 350,text: "Upkeep",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var upkeepPhaseBox = new Kinetic.Rect({x: 260,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "upkeepPhaseBox"});
	FixedLayer.add(upkeepPhaseBox);
	FixedLayer.add(upkeepPhase);

	var drawPhase = new Kinetic.Text({x: 400,y: 350,text: "Draw",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var drawPhaseBox = new Kinetic.Rect({x: 360,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "drawPhaseBox"});
	FixedLayer.add(drawPhaseBox);
	FixedLayer.add(drawPhase);

	var mainPhase1 = new Kinetic.Text({x: 500,y: 350,text: "Main 1",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var mainPhase1Box = new Kinetic.Rect({x: 460,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "main1PhaseBox"});
	FixedLayer.add(mainPhase1Box);
	FixedLayer.add(mainPhase1);

	var BeginCombatPhase = new Kinetic.Text({x: 600,y: 350,text: "Beg.Cmbt",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var BeginCombatPhaseBox = new Kinetic.Rect({x: 560,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "BeginCombatPhaseBox"});
	FixedLayer.add(BeginCombatPhaseBox);
	FixedLayer.add(BeginCombatPhase);

	var DeclareAttackerPhase = new Kinetic.Text({x: 700,y: 350,text: "Dec.Att",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var DeclareAttackerPhaseBox = new Kinetic.Rect({x: 660,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "DeclareAttackerPhaseBox"});
	FixedLayer.add(DeclareAttackerPhaseBox);
	FixedLayer.add(DeclareAttackerPhase);

	var DeclareDefenderPhase = new Kinetic.Text({x: 800,y: 350,text: "Dec.Def",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var DeclareDefenderPhaseBox = new Kinetic.Rect({x: 760,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "DeclareDefenderPhaseBox"});
	FixedLayer.add(DeclareDefenderPhaseBox);
	FixedLayer.add(DeclareDefenderPhase);

	var EndCombatPhase = new Kinetic.Text({x: 900,y: 350,text: "End.Cmbt",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var EndCombatPhaseBox = new Kinetic.Rect({x: 860,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "EndCombatPhaseBox"});
	FixedLayer.add(EndCombatPhaseBox);
	FixedLayer.add(EndCombatPhase);

	var mainPhase2 = new Kinetic.Text({x: 1000,y: 350,text: "Main 2",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var mainPhase2Box = new Kinetic.Rect({x: 960,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "mainPhase2Box"});
	FixedLayer.add(mainPhase2Box);
	FixedLayer.add(mainPhase2);

	var endTurnPhase = new Kinetic.Text({x: 1100,y: 350,text: "End Turn",fontSize: 12,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle"});
	var endTurnPhaseBox = new Kinetic.Rect({x: 1060,y: 335,width: 80,height: 30,fill: "#99FF99",stroke: "black",strokeWidth: 2,id: "endTurnPhaseBox"});
	FixedLayer.add(endTurnPhaseBox);
	FixedLayer.add(endTurnPhase);

//library, grvy and exile

	var libraryImage = new Image();
	libraryImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 710,image: libraryImage,width: 50,height: 50,id: "libraryImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	libraryImage.src = hostServerAddress+"assets/game/general/library.jpg";
	var libraryCountText = new Kinetic.Text({x: 180,y: 735,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"libraryCountText"});
	FixedLayer.add(libraryCountText);

	var grvyImage = new Image();
	grvyImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 775,image: grvyImage,width: 50,height: 50,id: "grvyImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	grvyImage.src = hostServerAddress+"assets/game/general/grvy.jpg";
	var grvyCountText = new Kinetic.Text({x: 180,y: 800,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"grvyCountText"});
	FixedLayer.add(grvyCountText);
libraryCountText
	var exileImage = new Image();
	exileImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 840,image: exileImage,width: 50,height: 50,id: "exileImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	exileImage.src = hostServerAddress+"assets/game/general/exile.jpg";
	var exileCountText = new Kinetic.Text({x: 180,y: 865,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"exileCountText"});
	FixedLayer.add(exileCountText);

//oppo library, grvy and exile

	var oppoLibraryImage = new Image();
	oppoLibraryImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 500,image: libraryImage,width: 50,height: 50,id: "oppoLibraryImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoLibraryImage.src = hostServerAddress+"assets/game/general/library.jpg";
	var oppoLibraryCountText = new Kinetic.Text({x: 180,y: 525,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoLibraryCountText"});
	FixedLayer.add(oppoLibraryCountText);

	var oppoGrvyImage = new Image();
	oppoGrvyImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 570,image: grvyImage,width: 50,height: 50,id: "oppoGrvyImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoGrvyImage.src = hostServerAddress+"assets/game/general/grvy.jpg";
	var oppoGrvyCountText = new Kinetic.Text({x: 180,y: 590,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoGrvyCountText"});
	FixedLayer.add(oppoGrvyCountText);

	var oppoExileImage = new Image();
	oppoExileImage.onload = function() {
		var image = new Kinetic.Image({x: 80,y: 640,image: exileImage,width: 50,height: 50,id: "oppoExileImage"});
		FixedLayer.add(image);
		FixedLayer.draw();
	}
	oppoExileImage.src = hostServerAddress+"assets/game/general/exile.jpg";
	var oppoExileCountText = new Kinetic.Text({x: 180,y: 675,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle",id:"oppoExileCountText"});
	FixedLayer.add(oppoExileCountText);


	//finalize
	stage.add(FixedLayer);
	document.getElementById('container').firstChild.children[2].oncontextmenu = function() {
		return false;
	}
	
	//call backend init
	initBackEndJS();
};

window.addEventListener("load",loadFixedFrames);
