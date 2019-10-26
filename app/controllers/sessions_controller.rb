class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate
      session[:user_id] = user.id
      flash[:success] = 'Welcome to Thumbnail Lister, Buddy!'
      binding.pry
      redirect_to root_url
    else
      flash.now.alert = "Email or password is invalid"
      render "new" 
    end
  end
end
