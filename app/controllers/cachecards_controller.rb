class CachecardsController < ApplicationController
	
	before_filter :set_cache_buster

	def set_cache_buster
	response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	response.headers["Pragma"] = "no-cache"
	response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
	end
  
	def show 
		if !signed_in?
			redirect_to signin_path
		end
		@exp = params['exp'] || "RTR"
		@lang = params['lang'] || "cn"
	end
	
end
