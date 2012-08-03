var clickedContextHiddenBox = function(evt)
{
	if (stage.get("#contextMenuGroup").length!=0)
	{
		if (evt) evt.stopPropagation();
		//We must explicitly remove these eventhandlers.
		for (i in stage.get("#contextMenuGroup")[0].children){
			stage.get("#contextMenuGroup")[0].children[i].off("mouseout");
			stage.get("#contextMenuGroup")[0].children[i].off("mouseover");
			stage.get("#contextMenuGroup")[0].children[i].off("click");
		}
		ContextLayer.remove(stage.get("#contextMenuGroup")[0]);
		ContextLayer.draw();
	}	
}
var displayCard = function(card,mine)
{
	switch(card.position.zone)
	{	
	case "hand":
		handCardDisplayer.display(card);
		break;
	case "battlefield":
		battlefieldCardDisplayer.display(card,mine);
		break;
	case "stack":
		stackCardDisplayer.display(card,mine);
		break;
	default:
	}
}

var BattlefieldCardDisplayer = function()
{
	var rightClickBattlefieldCard = function(){};
	var dblClickBattlefieldCard = function(){};
	var dragEndBattlefieldCard = function(evt, image){
		x = image.getX();
		y = image.getY();
		cardID = parseInt(image.attrs.id.substr(15,99));		//99 big enuf
		dragEndBattlefieldCardBE(x,y,cardID);
	};
	this.display = function(card,mine){
		if (stage.get("#handCard"+card.cardID).length>0)
		{
			VisibleCardLayer.remove(stage.get("#handCard"+card.cardID)[0]);
		}
		var battlefieldCard = new Image();
		battlefieldCard.onload = function() {
			if (mine)
			{
				var image = new Kinetic.Image({x: card.position.x,y: card.position.y,image: battlefieldCard, width: card.position.scaleX, height: card.position.scaleY, draggable:true, dragBounds: {top: 375 ,left: 250, right: 1180, bottom: 570}, id: "battlefieldCard"+card.cardID.toString()});
				image.attrs.mine = mine;
				image.on("click",function(e){rightClickBattlefieldCard.apply(window,[e,image]);});
				image.on("dblclick",function(e){dblClickBattlefieldCard.apply(window,[e,image]);});
				image.on("dragend",function(e){dragEndBattlefieldCard.apply(window,[e,image]);});
				polishImageHandler(image,battlefieldCard);
				VisibleCardLayer.add(image);
			}
			else{
				var image = new Kinetic.Image({x: card.position.x, y: (700-card.position.y) - card.position.scaleY,image: battlefieldCard, width: card.position.scaleX, height: card.position.scaleY ,id: "battlefieldCard"+card.cardID.toString()});
				image.attrs.mine = mine;
				image.on("click",function(e){rightClickBattlefieldCard.apply(window,[e,image]);});
				image.on("dblclick",function(e){dblClickBattlefieldCard.apply(window,[e,image]);});
				polishImageHandler(image,battlefieldCard);
				VisibleCardLayer.add(image);
			}
			VisibleCardLayer.draw();
		};
		battlefieldCard.src = card.engSRC;
	}
};

var StackCardDisplayer = function()
{
	var rightClickStackCard = function(){};
	var dblClickStackCard = function(){};
	this.display = function(card,mine)
	{
		if (stage.get("#handCard"+card.cardID).length>0)
		{
			VisibleCardLayer.remove(stage.get("#handCard"+card.cardID)[0]);
		}
		var stackCard = new Image();
		stackCard.onload = function() {
			var image = new Kinetic.Image({x: card.position.x,y: card.position.y,image: stackCard, width: card.position.scaleX, height: card.position.scaleY, id: "stackCard"+card.cardID.toString()});
			image.attrs.mine = mine;
			image.on("click",function(e){rightClickStackCard.apply(window,[e,image]);});
			image.on("dblclick",function(e){dblClickStackCard.apply(window,[e,image]);});
			polishImageHandler(image,stackCard);
			VisibleCardLayer.add(image);
			VisibleCardLayer.draw();
		};
		stackCard.src = card.engSRC;
	}
}

var HandCardDisplayer = function()
{
	if (!this.hasOwnProperty("number")) this.number = 0;
	this.display = function(card)
	{
		var handCard = new Image();
		handCard.onload = function() {
			number = handCard.getAttribute("number");
			offsetX = (number < 7) ? 130*number : 910;
			var image = new Kinetic.Image({x: 250 + offsetX,y: 710,image: handCard,width: 120, draggable:true, dragBounds: {top: 700 ,left: 250, right: 1160, bottom: 730}, height: 160,id: "handCard"+card.cardID.toString()});
			image.on("click",function(e){rightClickHandCard.apply(window,[e,image]);});
			image.on("dblclick",function(e){dblClickHandCard.apply(window,[e,image]);});
			polishImageHandler(image,handCard);
			VisibleCardLayer.add(image);
			VisibleCardLayer.draw();
		};
		handCard.src = card.engSRC;
		handCard.setAttribute("number",this.number);
		this.number++;
	};
	var dblClickHandCard = function (evt,image){
		//log("play this");
		if (evt.which==1){
			playHandCardBE(cardID);
			cardID = image.attrs.id.substr(8,99);		//99 big enuf
		}
	};
	var rightClickHandCard = function (evt,image){
		cardID = image.attrs.id.substr(8,99);		//99 big enuf
		var playHandCard = function(){
			playHandCardBE(cardID);
			clickedContextHiddenBox();
		};
		var putCardOntoBattlefield = function(){
			putCardOntoBattlefieldBE(cardID);
			clickedContextHiddenBox();
		};
		var putCardOntoTopOfLibrary = function(){
			putCardOntoTopOfLibraryBE(cardID);
			clickedContextHiddenBox();
		};
		var discard = function(){
			discardBE(cardID);
			clickedContextHiddenBox();
		};
		var exile = function(){
			exileBE(cardID);
			clickedContextHiddenBox();
		};
		var reveal = function(){
			revealBE(cardID);
			clickedContextHiddenBox();
		};
		items = [{text:"Play this card",func:playHandCard},{text:"Put this onto battlefield",func:putCardOntoBattlefield},{text:"put this on top of the library",func:putCardOntoTopOfLibrary},{text:"Discard this card",func:discard},{text:"Exile this card",func:exile},{text:"Reveal this card",func:reveal}];
		mousePosition = stage.getMousePosition();
		x = mousePosition.x;
		y = mousePosition.y;
		if (evt.which == 3)
		{
			//right click
			createContextMenu(x,y,items);
		}
	};
};

var createContextMenu = function (xx,yy,items)
{
	if (stage.get("#contextMenuGroup").length!=0)
	{
		return;
	}
	var contextMenuGroup = new Kinetic.Group({
		draggable: false,
		id: "contextMenuGroup"
	});
	yLength = 25 * items.length;
	if (yy+yLength>900)
	{
		yy-=yLength;		//display like a pro
	}
	var i = 0;
	var maxLength = -1;
	for (i = 0; i < items.length; i++)
	{
		if (maxLength < items[i].text.length) maxLength = items[i].text.length;
	}
	xLength = maxLength * 11;
	if (xx+xLength>1280)
	{
		xx-=xLength;		//display like a pro
	}
	var contextMenuBox = new Kinetic.Rect({x: xx, y: yy, width: xLength, height: yLength, fill: "#FFFFFF",stroke: "black",strokeWidth: 1,id: "contextMenuBox"});
	contextMenuGroup.add(contextMenuBox);
	var contextMenuItems = new Array();
	var contextMenuItemsText = new Array();
	cur_y = yy;
	var highlightItem = function(i){
		stage.get("#contextMenuItem"+i)[0].attrs.fill = "#FFFF99";
		ContextLayer.draw();
	};
	var deHighlightItem = function(i){
		stage.get("#contextMenuItem"+i)[0].attrs.fill = "#99FF99"
		ContextLayer.draw();
	};
	for (i = 0; i < items.length; i++)
	{
		var a = (items[i].text.length)*11/2;
		contextMenuItemsText[i] = new Kinetic.Text({x: xx + xLength/2 - a, y: cur_y +2 ,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle", id:"contextMenuItemsText" + i.toString(), text:items[i].text});
		contextMenuItems[i] = new Kinetic.Rect({x: xx, y: cur_y, width: xLength, height: 25, fill: "#99FF99",stroke: "black",strokeWidth: 1,id: "contextMenuItem"+i.toString()});
		contextMenuItems[i].on("mouseover",highlightItem.bind(window,i));
		contextMenuItems[i].on("mouseout",deHighlightItem.bind(window,i));
		contextMenuItems[i].on("click",items[i].func);
		contextMenuItemsText[i].on("mouseover",highlightItem.bind(window,i));
		contextMenuItemsText[i].on("mouseout",deHighlightItem.bind(window,i));
		contextMenuItemsText[i].on("click",items[i].func);
		cur_y += 25;
		contextMenuGroup.add(contextMenuItems[i]);
		contextMenuGroup.add(contextMenuItemsText[i]);
	}
	ContextLayer.add(contextMenuGroup);
	ContextLayer.draw();
};

(function initUICards()
{
	handCardDisplayer = new HandCardDisplayer();
	stackCardDisplayer = new StackCardDisplayer();
	battlefieldCardDisplayer = new BattlefieldCardDisplayer();
})();
