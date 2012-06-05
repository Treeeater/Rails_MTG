class SealedController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
	end

	def new
		pid = Kernel.spawn("/home/yuchen/sites/mtg/sealedServer/sealedServer.rb " + current_user.id.to_s)
		Process.detach(pid)
	end
	
end
