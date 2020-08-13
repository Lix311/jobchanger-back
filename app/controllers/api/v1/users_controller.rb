class Api::V1::UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users 
  end 
  
  def create
        @user = User.create(user_params)
        if @user.valid?
          render json: @user
        else
          render json: { errors: @user.errors.full_messages }
        end
      end
     
      private
      def user_params
        params.require(:user).permit(:username, :password, :email, :avatar)
      end
end
