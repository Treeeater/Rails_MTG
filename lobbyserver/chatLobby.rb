class ChatUser
	attr_accessor :name, :socketID, :uid, :timeEntered
end

class ChatLobby
	attr_accessor :users, :websockets
end

class ResponseMessage
	attr_accessor :type, :body, :username, :uid
	
	def	serialize
		return ActiveSupport::JSON.encode(self)
	end
end