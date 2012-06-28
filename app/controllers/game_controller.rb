class GameController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    	@user = User.find(params[:id])
	end

	def new
		if !signed_in?
			redirect_to signin_path
		else
			pid = Kernel.spawn("ruby ./gameServer/gameServer.rb " + current_user.id.to_s)
			Process.detach(pid)
		end
	end
	
end
