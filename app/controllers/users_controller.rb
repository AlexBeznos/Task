class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user , only: [:show,:update]

  def index
    @users = User.all
    respond_to do |format|
      format.html { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html { render json: @user }
    end
  end

  def update
    @user.errors.messages["Mum"] = "Can not update user"
    respond_to do |format|
      format.json { render json: @user.errors }
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
end
