class UsersController < ApplicationController
def new
    @user = User.new 
end

def create 
    @user = User.new(user_params)
      if @user.save 
        session[:user_id] = @user.id
        redirect_to '/'
      else 
        render :new 
    end
  end
end

def show 
  @user = User.find(params[:id])
end



private 

def user_params 
    params.require(:user).permit(:id, :username, :email, :password)
end