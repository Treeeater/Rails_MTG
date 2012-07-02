var clickedContextHiddenBox = function(evt)
{
	if (stage.get("#contextMenuGroup").length!=0)
	{
		if (evt) evt.stopPropagation();
		ContextLayer.remove(stage.get("#contextMenuGroup")[0]);
		ContextLayer.draw();
	}	
}
var displayCard = function(card)
{
	switch(card.position.zone)
	{	
	case "hand":
		handCardDisplayer.display(card);
		break;
	default:
	}
}

var HandCardDisplayer = function()
{
	if (!this.hasOwnProperty("number")) this.number = 0;
	this.display = function(card)
	{
		var handCard = new Image();
		handCard.onload = function() {
			number = handCard.getAttribute("number")
			var image = new Kinetic.Image({x: 250 + 130*number,y: 710,image: handCard,width: 120, draggable:true, height: 160,id: "handCard"+card.cardID.toString()});
			VisibleCardLayer.add(image);
			VisibleCardLayer.draw();
		};
		handCard.src = card.engSRC;
		handCard.setAttribute("number",this.number);
		this.number++;
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
	var i = 0;
	var maxLength = -1;
	for (i = 0; i < items.length; i++)
	{
		if (maxLength < items[i].text.length) maxLength = items[i].text.length;
	}
	xLength = maxLength * 15;
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
		
		contextMenuItemsText[i] = new Kinetic.Text({x: xx + (xLength/2), y: cur_y + 12,text: "0",fontSize: 20,fontFamily: "Calibri",textFill: "black",align: "center",verticalAlign: "middle", id:"contextMenuItemsText" + i.toString(), text:items[i].text});
		contextMenuItems[i] = new Kinetic.Rect({x: xx, y: cur_y, width: xLength, height: 25, fill: "#99FF99",stroke: "black",strokeWidth: 1,id: "contextMenuItem"+i.toString()});
		contextMenuItems[i].on("mouseover",highlightItem.bind(window,i));
		contextMenuItems[i].on("mouseout",deHighlightItem.bind(window,i));
		contextMenuItems[i].on("click",items[i].func);
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
})();