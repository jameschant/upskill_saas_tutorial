class UsersController < ApplicationController
  # Before any of these actions get run, do this function (from Devise)
  before_action :authenticate_user!
  
  # GET to /users/:user_id
  def show
    @user = User.find( params[:id] )
  end

  def index
    
  end
  
end