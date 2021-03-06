require 'sqlite3'

class ActiveRecord::Base  
  def self.escape_sql(array)
    self.send(:sanitize_sql_array, array)
  end
end

class UsersController < ApplicationController
  
  before_filter :signed_in_user, only: [:edit, :update, :index, :show]		#before_filter runs before any other code.
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def new
	@user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
	  sign_in @user
	  flash[:success] = "Welcome to the MTG Draft!"
	  redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def index
    @users = User.all
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to home_path
  end

  def submitDeck
    if !signed_in?
		redirect_to signin_path
	else
		#stringToStore = ActiveSupport::JSON.encode(params[:_json])
		#puts "stringTosTore is " + params.to_s
		query = User.escape_sql(["UPDATE users SET Deck_info=? WHERE Id=?",ActiveSupport::JSON.encode(params),current_user.id.to_s])
		users = User.find_by_sql(query)
	end
  end

private

    def signed_in_user
      store_location
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
