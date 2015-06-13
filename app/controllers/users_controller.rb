class UsersController < ApplicationController
  def login
  end

  def create
    user = User.find_by_email(params[:email])
    unless user
      @user = User.create user_params
      session[:user_id] = @user.id
      redirect_to root_url
    end
  end

  def logout
  end

  def signup

  end

  def edit
  end

  def update
  end

  def create_session
    @user = User.find_by_email(params[:user][:email])
    if @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def destroy_session
    session[:user_id] = nil
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
