module SessionsHelper


      # Returns current user logged in 

###STRETCH### log out  
    # def logged_in?
    #     !current_user.nil
    # end

end


######
# current_user method
# ^^^

# @current_user = @current_user || User.find_by(id: session[:user_id])

# ^^^

# if @current_user.nil?
#     @current_user = User.find_by(id: session[:user_id])
#   else
#     @current_user
#   end
######