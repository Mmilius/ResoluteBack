class ReportsController < ApplicationController
    def index
        @reports = Report.all 
        render json: @reports
    end

    def show
        @report = Report.find(params[:id])
        render json: @report
    end

    def create 
        @report = Report.create({
            status: params[:status],
            challenges: params[:challenges],
            learned: params[:learned],
            image: params[:image],
            resolution_id: params[:resolution_id]
        })
    end


end
