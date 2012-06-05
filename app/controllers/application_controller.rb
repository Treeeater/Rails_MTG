class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  $serverHostAddress = "http://localhost:3000/"
end
