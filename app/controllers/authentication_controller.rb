class AuthenticationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Good job #{user.username.capitalize}, you have signed into your website"
      redirect_to articles_path
    else
      flash[:danger] = 'Bad Gloma.  Try again'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have successfully signed out.'
    redirect_to root_path
  end
end
