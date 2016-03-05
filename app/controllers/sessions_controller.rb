class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
    # render the page that shows the log in form
  end

  def create
    # receive the form params from "submit" of log in form
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have been logged in!"
    else
      @user = User.new
      flash.now[:error] = "Bad Username or Password"
      render :new
    end
  end

  def destroy
    #binding.pry
    session[:user_id] = nil
    # redirect_to root_path, 
    redirect_to root_path, notice: "You have been logged out!"
  end
end