class UsersController < ApplicationController
  before_filter :require_login, except: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to RailsStarter!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Your changes have been saved!"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def require_login
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
end
