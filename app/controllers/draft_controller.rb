class DraftController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    		@user = User.find(params[:id])
	end

	def new
		pid = Kernel.spawn("ruby ./draftServer/draftServer.rb " + current_user.id.to_s)
		Process.detach(pid)
	end
	
end
