class AuditsController < ApplicationController
    before_action :authenticate_user!, only: [:show, :index]


    def show
        @audit =Audit.find params[:id]

        @company = @audit.company

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

