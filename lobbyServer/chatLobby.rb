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
	attr_accessor :players, :hostUID, :hostName, :type
	def initialize(uid, username, type)
		@hostName = username
		@hostUID = uid
		@players = Array.new
		@players.push([uid,username])
		@type = type
	end
end

class GamesList
	attr_accessor :games
end
