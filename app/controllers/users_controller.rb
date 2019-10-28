class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'Congrats on your new Thumbnail Listener account. You aint gonna regret registering at Thumbnail Listener.' 
      redirect_to root_url
    else
      flash[:alert] = 'There was a problem with your registration.'
      redirect_to new_user_path
    end

  end

  protected
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :salt, :encrypted_password)
  end
end
