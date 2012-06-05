class LobbyController < ApplicationController
	def index
		if !signed_in?
			store_location
			redirect_to signin_path
		end
	end
	
end