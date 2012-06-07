class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  $hostServerAddress = "http://localhost:3000/"
  $hostServerDomain = "localhost"
end
