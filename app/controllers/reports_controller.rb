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
        render json: @report
    end

    def destroy
        @report = Report.find(params[:id])
        @report.destroy
    end

    def update
        @report = Report.find(params[:id])
        if @report.update(report_params)
            render json: @report
        else
            render json: @report.errors, status: :unprocessable_entity
        end

    end

    private
    def report_params
        params.require(:report).permit(:status, :challenges, :learned, :image, :resolution_id, :created_at, :updated_at, :id)
    end


end
