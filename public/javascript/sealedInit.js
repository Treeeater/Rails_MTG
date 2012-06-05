	//helpers:
	landsVisual = {"plains":515,"island":555,"swamp":595,"mountain":635,"forest":675};
	var addLands = function(l){
		var number = prompt("How many " + l + " do you want?");
		window[l] = number;
		if (stage.get("#"+l+"Number").length==0)
		{
			var landText = new Kinetic.Text({
			  x: 70,
			  y: landsVisual[l],
			  text: number,
			  fontSize: 12,
			  fontFamily: "Calibri",
			  textFill: "green",
			  align: "center",
			  verticalAlign: "middle",
			  id: l+"Number"
			});
			layer.add(landText);
		}
		else
		{
			stage.get("#"+l+"Number")[0].attrs.text=number;
		}
		layer.draw();
	};
	function timeDown(){
		if (timer == 0) return;
		timer--;
		minute = Math.floor(timer/60);
		seconds = timer - minute*60;
		stage.get("#timerText")[0].attrs.text = minute.toString()+":"+seconds.toString();
		timerLayer.draw();
	}
	//onload:
      window.onload = function() {
		var imgReady = 0;
		function testAndDraw(){
			//if (imgReady == 6) {layer.draw();} else {imgReady++; alert(imgReady);}
			layer.draw();
		}
        stage = new Kinetic.Stage({
          container: "container",
          width: 1280,
          height: 720
        });
        layer = new Kinetic.Layer();
		
		//draw section division lines
		var blueLine = new Kinetic.Line({
          points: [240, 360, 1280, 360],
          stroke: "green",
          strokeWidth: 3,
          lineCap: "round",
          lineJoin: "round",
        });
		
		var blueLine2 = new Kinetic.Line({
          points: [240, 0, 240, 720],
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
		
		layer.add(blueLine);
		layer.add(blueLine2);
		layer.add(blueLine3);
		layer.add(blueLine4);
		
		//add timer
		var timerTitleText = new Kinetic.Text({
          x: 90,
          y: 340,
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
          y: 340,
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
		imageObj = new Image();
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
			testAndDraw();
		}
		//five colors
		plains=0,island=0,swamp=0,mountain=0,forest=0;
		imageObj2 = new Image();
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
		imageObj3 = new Image();
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
		imageObj4 = new Image();
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
		imageObj5 = new Image();
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
		imageObj6 = new Image();
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
		imageObj.src = "mtg/general/back.jpg";
		imageObj2.src = "mtg/general/white.png";
		imageObj3.src = "mtg/general/blue.png";
		imageObj4.src = "mtg/general/black.png";
		imageObj5.src = "mtg/general/red.png";
		imageObj6.src = "mtg/general/green.png";
		
		//sort buttons
		var buttonSortColor = new Kinetic.Rect({
          x: 30,
          y: 380,
          width: 80,
          height: 20,
          fill: "#00D2FF",
          stroke: "black",
          strokeWidth: 2
        });
		buttonSortColor.on("mouseover",function(){document.body.style.cursor = "pointer";});
		buttonSortColor.on("mouseout",function(){document.body.style.cursor = "default";});
		buttonSortColor.on("click",function(){alert("color sort not implemented!")//sortByColor;
		});
        layer.add(buttonSortColor);
		var buttonSortColorText = new Kinetic.Text({
          x: 70,
          y: 390,
          text: "ColorSort",
          fontSize: 12,
          fontFamily: "Calibri",
          textFill: "black",
          align: "center",
          verticalAlign: "middle"
        });
		layer.add(buttonSortColorText);
		
		var buttonSortCMC = new Kinetic.Rect({
          x: 130,
          y: 380,
          width: 80,
          height: 20,
          fill: "#00D2FF",
          stroke: "black",
          strokeWidth: 2
        });
		buttonSortCMC.on("mouseover",function(){document.body.style.cursor = "pointer";});
		buttonSortCMC.on("mouseout",function(){document.body.style.cursor = "default";});
		buttonSortCMC.on("click",function(){alert("CMC sort not implemented!")//sortByCMC;
		});
        layer.add(buttonSortCMC);
		var buttonSortCMCText = new Kinetic.Text({
          x: 170,
          y: 390,
          text: "CMCSort",
          fontSize: 12,
          fontFamily: "Calibri",
          textFill: "black",
          align: "center",
          verticalAlign: "middle"
        });
		layer.add(buttonSortCMCText);
		
		//add land button
		
		var buttonAddLand = new Kinetic.Rect({
          x: 40,
          y: 410,
          width: 160,
          height: 20,
          fill: "#00D2FF",
          stroke: "black",
          strokeWidth: 2
        });
		buttonAddLand.on("mouseover",function(){document.body.style.cursor = "pointer";});
		buttonAddLand.on("mouseout",function(){document.body.style.cursor = "default";});
		buttonAddLand.on("click",function(){alert("Basic Land sort not implemented!")//Add Basic Lands;
		});
        layer.add(buttonAddLand);
		var buttonAddLandText = new Kinetic.Text({
          x: 120,
          y: 420,
          text: "Add Basic Lands",
          fontSize: 12,
          fontFamily: "Calibri",
          textFill: "black",
          align: "center",
          verticalAlign: "middle"
        });
		layer.add(buttonAddLandText);
		
		//finalize
		stage.add(timerLayer);
		stage.add(layer);
      };