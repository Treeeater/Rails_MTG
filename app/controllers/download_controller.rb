class DownloadController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    		@user = current_user
	end
end
