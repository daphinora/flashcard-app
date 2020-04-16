class UsersController < ApplicationController
    def index
        
    end

    def show
        @user = User.find(params[:id])
        @user_collections = User.user_collections
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)    
        # binding.pry
        if @user.valid?
            @user.save
            flash[:success] = "Welcome!, now let's get FLASHIN"
            redirect_to user_path(@user)
        else
          render 'new'
        end
      end

      private

      def user_params
        params.require(:user).permit(:username, :password,:password_confirmation)
      end

end
