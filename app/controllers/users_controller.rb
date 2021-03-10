class UsersController < ApplicationController
before_action :logged_in_user, only: [:show]

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
  if logged_in?
    @user = User.find(params[:id])
  else 
    redirect_to new_user_path
  end
end



private 

def user_params 
    params.require(:user).permit(:id, :username, :email, :password)
end

def logged_in?
  !current_user.nil?
end

def logged_in_user
  unless logged_in?
    redirect_to new_user_path
  end
end