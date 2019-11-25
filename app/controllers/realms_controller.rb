class RealmsController < ApplicationController
    def index
        @realms = Realm.all 
        render json: @realms
    end

    def show
        @realm = Realm.find(params[:id])
        render json: @realm, include: [:resolutions]
    end

end
