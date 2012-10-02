class DraftController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    		@user = User.find(params[:id])
	end

	def new
		arg = params.values[0..-3].join(" ")
		string = "ruby ./draftServer/draftServer.rb " + current_user.id.to_s + " " + arg
		#File.open("log_draft_server.txt","w"){|f| f.write(string)}
		pid = Kernel.spawn(string)
		Process.detach(pid)
	end
	
end
