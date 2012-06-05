class SealedController < ApplicationController
	def index
		if !signed_in?
			redirect_to signin_path
		end
	end
	
end