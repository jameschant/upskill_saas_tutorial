class UsersController < ApplicationController
  # Before any of these actions get run, do this function (from Devise)
  before_action :authenticate_user!

  def index
    # We could do Users.all but that runs individual SQL queries which is expensive
    # This optimises the database retrieval
    @users = User.includes(:profile)
  end
  
  # GET to /users/:user_id
  def show
    @user = User.find( params[:id] )
  end

end