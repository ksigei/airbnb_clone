class UsersController < ApplicationController
  # before running any of the methods in this controller, run the authenticate_user method
  before_action :authenticate_user, except: [:new, :create, :login, :login_attempt]
  def index
      # get all the users
      @users = User.all
  end

  def show
      # get the user with the id from the url
      @user = User.find(params[:id])
  end

  def new
      # create a new user
      @user = User.new
  end

 
  def create
      # create a new user from the params
      @user = User.new(user_params)

      # if the user is saved, redirect to the user's show page
      # otherwise, render the new view
      if @user.save
          # log the user in
          session[:user_id] = @user.id

          redirect_to @user
      else
          render :new
      end
  end

  def edit
      # get the user with the id from the url
      @user = User.find(params[:id])
  end

  def update
      # get the user with the id from the url
      @user = User.find(params[:id])

      # if the user is updated, redirect to the user's show page
      # otherwise, render the edit view
      if @user.update(user_params)
          redirect_to @user
      else
          render :edit
      end
  end

  def destroy
      # get the user with the id from the url
      @user = User.find(params[:id])

      # delete the user
      @user.destroy

      # redirect to the users index page
      redirect_to users_path
  end

   def authenticate_user
      # if there is no user logged in, redirect to the login page
      redirect_to login_path unless logged_in?
   end


  private
      # only allow the following params to be passed to the model
      def user_params

          params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number)
      end
end
