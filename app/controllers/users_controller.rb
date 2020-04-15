class UsersController < ApplicationController
    def index
        redirect_to user_path
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end

end
