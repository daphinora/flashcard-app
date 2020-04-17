class UsersController < ApplicationController
    def index
        
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)    
        # binding.pry
        if @user.valid?
            @user.save
            log_in
            flash[:success] = "Welcome!, now let's get FLASHIN'"
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

# link_to collection.name, @collection_path(collection) 