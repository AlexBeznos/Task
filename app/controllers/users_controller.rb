class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: user_to_json(@users) # #user_to_json is shit find out how to make this by rabl gem or jbuilder gem
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html { render json: user_to_json(@user) } # same as in index action
    end
  end

  def update
    raise "DO NOT UPDATE ! YOU! STUPID BITCH!"
  end

  private
  
  def user_to_json(user)
    user.to_json(:only => ["name","last_name","city"])
  end

end
