class UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: [:resolutions, :reports, :realms]
    end

    def create
        @user = User.create({
            username: params[:username],
            password: params[:passowrd]
    })
    end



end
