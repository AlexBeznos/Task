class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
  # #user_to_json is shit find out how to make this by rabl gem or jbuilder gem
  end

  def show
    @user = User.find(params[:id])

  end

  def update
    raise "DO NOT UPDATE ! YOU! STUPID BITCH!"
  end

end
