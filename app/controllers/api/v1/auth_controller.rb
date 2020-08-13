class Api::V1::AuthController < ApplicationController
    
    def login
       user = User.find_by(username: params[:user][:username])

       if user && user.authenticate(params[:user][:password])
            render json: user
       else 
        render json: {errors: "You dun goofed"}
        end
    end 
end
