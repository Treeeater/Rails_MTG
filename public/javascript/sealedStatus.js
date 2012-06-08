function start(){
	//var ws = 0;				//uncomment this line in production.
	var myUsername = $('#account').attr('uname');
	var myUID = $('#account').attr('uid');
	var bothPlayersConnected = 0;
	var bothPlayersReady = 0;
	var bothPlayersSubmittedDecks = 0;
	var init_status = false;
	function Message(type, username, uid, body)
	{
		this.type = type;
		this.username = username;
		this.uid = uid;
		this.body = body;
	}

	function log(s)
	{
		$('#statusbox').val($('#statusbox').val() + s);
	}

	function clearStatusBox()
	{
		$('#statusbox').val('');
	}

	function handShake()
	{
		var msg = new Message("init",myUsername,myUID,"");
		ws.send(JSON.stringify(msg));
	}

	function initializeCommunication()
	{
		clearStatusBox();
		ws = new WebSocket("ws://"+hostServerDomain+":"+gamePort+"/");
		ws.onopen = function(){
			log("Game server connected.\n\n");
			handShake();
			//ws.close();
   		}
		ws.onclose = function(){
			log("Game server disconnected.\n\n");
			$("#status_oppo_img").attr("src",'/assets/lobby/broken.png');
			$("#status_me_img").attr("src",'/assets/lobby/broken.png');
		}
		ws.onmessage = processMessage;
	}

	initPacks = function()
	{

		if (bothPlayersConnected != 2)
		{
			log("The session is not fully initialized for either you or your opponent, please wait for the faces to turn green before clicking this button!\n\n");
			return false;
		}
		//both players ready.
		var msg = new Message("initPacks",myUsername,myUID,"");
		ws.send(JSON.stringify(msg));
	}
	
	function processMessage(s)
	{
		msg = JSON.parse(s.data);
		var d = new Date();
		time = d.toTimeString();
		switch (msg.type)
		{
			case "init":
				if (msg.uid == myUID){
					bothPlayersConnected++;
					$("#status_me_img").attr("src",'/assets/lobby/connected.jpg');
					if (bothPlayersConnected==2)
					{
						log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
						init_status = true;
					}
					else if (bothPlayersConnected==1)
					{
						if (msg.body=="ready"){
							bothPlayersConnected++;
							init_status = true;
							log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
							$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
						}
						else {log("Please wait for your opponent to finish initializing.\n\n");}
					}
				}
				else{
					bothPlayersConnected++;
					$("#status_oppo_img").attr("src",'/assets/lobby/connected.jpg');
					if (bothPlayersConnected==2)
					{
						if (init_status==false)
						{
							log("Initialization done, you are ready to open the packs, just click open the packs!\n\n");
							init_status = true;
						}
						else
						{
							//your opponent has just reconnected.
							log("Just FYI your opponent has reconnected. Enjoy your game.\n\n");
						}
					}
					else if (bothPlayersConnected==1)
					{
						log("Your session is not yet fully initialized, please wait.\n\n");
					}
				}
				break;
			case "disconnect":
				// this is gotta be opponent disconnect, so no worries.
				bothPlayersConnected--;
				$("#status_oppo_img").attr("src",'/assets/lobby/broken.png');
				log("Just FYI your opponent has disconnected, you can continue deck building regardless. He/She can resume deck building once reconnected.\n\n")
				break;
			case "error":
				log('Error : ' + msg.body + '\n\n');
			case "info":
				log('Info : ' + msg.body + '\n\n');
			default:
		}
	}

	initializeCommunication();
}

window.addEventListener("load",start);
