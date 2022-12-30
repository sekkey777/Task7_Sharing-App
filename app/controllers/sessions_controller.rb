class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def login
    # user = User.find_by(email: session_params[:email])
  
    # if user && user.authenticate(session_params[:password])
    #   session[:user_id] = user.id
    #   redirect_to root_url, notice: 'ログインしました。'    
    # else
    #   render :new
  #  end
  end

  def create
  end

  private

  # def session_params
  #   params.require(:session).permit(:email, :password)
  # end
end
