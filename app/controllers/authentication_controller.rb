class AuthenticationController < ApplicationController
  def new
    @user = User.new
  end


end
