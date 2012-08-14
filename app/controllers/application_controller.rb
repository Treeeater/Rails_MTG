class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  $hostServerAddress = "http://chromium.cs.virginia.edu:12340/"
  $hostServerDomain = "chromium.cs.virginia.edu"
end
