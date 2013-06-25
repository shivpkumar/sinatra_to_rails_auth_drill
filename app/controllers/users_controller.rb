class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_session(@user)
      redirect_to root_path
    else
      flash.now[:errors] = @user.errors.messages
      render :new
    end
  end
end
