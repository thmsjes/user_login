class SessionsController < ApplicationController
include CurrentUserConcern
  def create
    user = User
      .find_by(email: params["email"])
      .try(:authenticate, params["password"])
      puts user
     
    if user
      session[:user_id] = user.id
      # render json: {status: :created, logged_in: true, user: user, user: user.id, session: session[:user_id]}
      redirect_to main_path
    else 
      redirect_to login_path, notice: "Wrong username, email, or password"
    end
  end

  def logged_in
    !!current_user
    # if @current_user
    #   render json: { logged_in: true, user: @current_user}
    # else
    #   render json: {
    #   logged_in: false }
    # end
  end

  def logout
    reset_session
    # render json: {status: 200, logged_out: true}
    redirect_to home_path
    
  end

end