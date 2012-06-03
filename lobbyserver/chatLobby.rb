class ChatUser
	attr_accessor :name, :socketID, :uid, :timeEntered
end

class ChatLobby
	attr_accessor :users, :websockets
end

class ResponseMessage
	attr_accessor :type, :username, :uid, :body
	
	def	serialize
		return ActiveSupport::JSON.encode(self)
	end
	
	def initialize(t="",n="",i="",b="")
		@type = t
		@username = n
		@uid = i
		@body = b
	end
	
end

class Game
	attr_accessor :users, :gameName
end

class GamesList
	attr_accessor :games
end