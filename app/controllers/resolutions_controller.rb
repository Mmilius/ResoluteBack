class ResolutionsController < ApplicationController
    def index
        @resolutions = Resolution.all 
        render json: @resolutions, include: [:realm]
    end

    def show
        @resolution = Resolution.find(params[:id])
        render json: @resolution, include: [:reports]
    end

    def create 
        @resolution = Resolution.create ({
            goal: params[:goal],
            motivation: params[:motivation],
            image: params[:image],
            user_id: params[:user_id],
            realm_id: params[:realm_id], 
        })
        redirect_to "http://localhost:8080/resolutions"
    end

    def destroy
        @resolution = Resolution.find(params[:id])
        @resolution.destroy
    end

    def update
        @resolution = Resolution.find(params[:id])
        if @resolution.update(resolution_params)
            render json: @resolution
        else
            render json: @resolution.errors, status: :unprocessable_entity
        end

    end

    private
    def resolution_params
        params.require(:resolution).permit(:goal, :motivation, :image, :realm_id, :created_at, :updated_at, :id, :user_id)
    end


end
