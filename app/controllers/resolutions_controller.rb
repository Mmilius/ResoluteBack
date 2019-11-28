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
end
