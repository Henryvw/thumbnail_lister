class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'Welcome to Thumbnail Lister, Buddy!'
      redirect_to root_url

    else
      flash[:alert] = "Email or password is invalid"
      redirect_to new_session_path
    end
  end

  protected
  def user_params
    params.require(:session).permit(:email, :password)
  end
end
