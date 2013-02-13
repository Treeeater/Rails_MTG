class LobbyController < ApplicationController
  @@openedLobbyServer = false
	def index
		if !signed_in?
			store_location
			redirect_to signin_path
    end
    if !@@openedLobbyServer
      puts "Starting lobby server..."
      string = "ruby ./lobbyServer/lobbyServer.rb"
      #File.open("log_draft_server.txt","w"){|f| f.write(string)}
      pid = Kernel.spawn(string)
      Process.detach(pid)
      @@openedLobbyServer = true
      sleep(1)
    end
	end
	
end