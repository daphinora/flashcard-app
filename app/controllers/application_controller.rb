class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user
    # include SessionsHelper

    def log_in
        session[:user_id] = @user.id
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
end
