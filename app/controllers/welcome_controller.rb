class WelcomeController <ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
      if @user.save
        flash[:notice] = 'Congrats Gloma, you have successfully signed in'
        redirect_to root_path
      else
        flash[:danger] = 'Gloma, you spelled something wrong...'
        render :index
      end
  end
end
