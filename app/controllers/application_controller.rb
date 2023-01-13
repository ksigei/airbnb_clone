class ApplicationController < ActionController::Base
    # current_user is a method that returns the current user
    # if there is a user logged in

    # helper_method makes the method available to the view
    helper_method :current_user

    def current_user
        # if there is a user logged in, return the user
        # otherwise, return nil
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    # check if there is a user logged in
    def logged_in?
        # if there is a user logged in, return true
        # otherwise, return false
        !!current_user
    end

    # if there is no user logged in, redirect to the login page
    # def authenticate_user
    #     redirect_to login_path unless logged_in?
    # end
end


