class RatReportsController < ApplicationController
    before_action :authenticate_user!

    def new
        @rat_report = RatReport.new
    end

    def create
        @audit = Audit.find params[:id]
        @rat_report = RatReport.new rat_report_params
        @rat_report.audit = @audit

        if @rat_report.save?
            redirect_to rat_report_path(@rat_report)
        else
            render "rat_reports/show"
        end
    end

    def show
        @rat_report = RatReport.find params[:id]
    end

    def edit
        @rat_report = RatReport.find params[:id]
    end

    def update
        
        @rat_report = RatReport.find params[:id]

        if @rat_report.update(rat_report_params)
            redirect_to rat_report_path(@rat_report.id)
          else
            render :edit
        end
    end

    private
    def rat_report_params
        params.require(.rat_report).permit(:introduction, :comment, :observation,
            :improvement, :conclusion)
    end

end
