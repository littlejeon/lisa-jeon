class UsersController < ApplicationController
  before_action :authorize, only: [:new, :create]
  before_action :set_user, only: [:show, :edit]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), :notice => "Thank you for signing up!"
    else
      render :new
    end
  end

  def edit
    user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to about_path(@user)
  end

  def delete
    user = User.find(params[:id])
    user.destroy
  end

 



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :bio, :email, :password, :password_confirmation, :image_upload, :linkedin, :github, :accent_color)
  end
end
