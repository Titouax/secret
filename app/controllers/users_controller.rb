class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      email: params[:user][:email],
      password_digest: params[:user][:password_digest]
    )
    redirect_to "/users/#{User.last.username}"
  end

  def edit

  end

  def show
    @user = User.find(params[:id])
  end

  def destroy

  end
end
