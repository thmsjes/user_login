class RegistrationsController < ApplicationController
  
  def new

  end

  def create
    @user = User.new(params.require(:user).permit(:email, :first_name, :last_name, :password))
    @user.save
    redirect_to registrations_path
  end

  def index
    @users = User.all
  end

end