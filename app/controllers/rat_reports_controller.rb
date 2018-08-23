class RatReportsController < ApplicationController
    before_action :authenticate_user!

    def new
        @rat_report = RatReport.new
    end

    def create

        @rat_report = RatReport.new rat_report_params
        @audit = Audit.find params[:audit_id]
        @rat_report.audit = @audit

        if @rat_report.save
            
            redirect_to rat_report_path(@rat_report)
        else
            render :new
        end
    end

    def show
        
        @rat_report = RatReport.find params[:id]
        # @audit = Audit.find params[:id]
        # @audit = @rat_report.audit_id
        # @company = @audit.company_id
        # @site = @audit.site_id
        # @rat_report= RatReport.where(audit_id: @audit)

        # render json: @rat_report
        respond_to do |format|
            format.html
            format.pdf do 
                render pdf: 'pdf',
                template: 'rat_reports/pdf.html.erb',
                page_size: 'Letter',
                zoom: 1.3,
                margin: {
                    left: 20,
                    right: 0
                }
            end
        end
    end

    def edit
        @rat_report = RatReport.find params[:id]
    end

    def update
        # @audit = Audit.find params[:id]
        @rat_report = RatReport.find params[:id]
        # @rat_report = RatReport.find params[:id]

        if @rat_report.update(rat_report_params)
            redirect_to rat_report_path(@rat_report.id)
          else
            render :edit
        end
    end

    private

    def rat_report_params
        params.require(:rat_report).permit(:introduction, :comment, :observation,
            :improvement, :conclusion)
    end

end


