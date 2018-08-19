class AuditsController < ApplicationController
    before_action :authenticate_user!, only: [:show, :index]


    def show
        @audit =Audit.find params[:id]
    
        @rat_report= RatReport.where(audit_id: @audit)

        @company = @audit.company
    
        # render json: @rat_report

        @site = @audit.site  

        @sites = @company.site.order(created_at: :desc)
  
    end

    def index
    
        @audits = current_user.teamed_audits 
    end

    # private
    # def audits_params
    #     params.require(.audit).permit(:activity, :target, :criterion, :requirement,
    #          :duration, :audit_doc, :start_date, :end_date, :company_id )
    # end
end

