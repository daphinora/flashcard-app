class UsersController < ApplicationController
    def index
        @users = User.all
        #login from view page, using form
        #redirect to user new, from form
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new

    end

end
