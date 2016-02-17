class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      flash[:sucess] = "User created!"
      redirect_to @user
    else
      flash.now[:danger] = "Incorrect!"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
