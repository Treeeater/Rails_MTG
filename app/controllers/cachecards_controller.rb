class CachecardsController < ApplicationController
	
	def show 
		if !signed_in?
			redirect_to signin_path
		end
		@exp = params['exp'] || "RTR"
		@lang = params['lang'] || "cn"
	end
	
end
