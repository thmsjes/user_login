module ApplicationHelper
 def set_current_user

    puts session[:user_id]
      if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

 def logged_in
    !!set_current_user
    # if @current_user
    #   render json: { logged_in: true, user: @current_user}
    # else
    #   render json: {
    #   logged_in: false }
    # end
  end
end
