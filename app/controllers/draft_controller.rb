class DraftController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    		@user = User.find(params[:id])
	end

	def new
		arg = params.values.join(" ")
		pid = Kernel.spawn("ruby ./draftServer/draftServer.rb " + current_user.id.to_s + " " + arg)
		Process.detach(pid)
	end
	
end
