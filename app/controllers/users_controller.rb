class UsersController < ApplicationController
    def new
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        if @user.save 
          redirect_to '/repair_bills'
        else 
          render :new 
        end
    end
end

private 
def user_params 
    params.require(:user).permit(:username, :email, :password_digest)
end