class ResolutionsController < ApplicationController
    def index
        @resolutions = Resolution.all 
        render json: @resolutions
    end

    def show
        @resolution = Resolution.find(params[:id])
        render json: @resolution, include: [:reports]
    end

end
