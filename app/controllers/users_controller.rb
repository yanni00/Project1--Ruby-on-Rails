class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [:new, :create]
  before_action :check_if_admin, only: [ :index ]
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params

    params.require(:user).permit( :name, :email, :password, :password_confirmation )

  end

end
