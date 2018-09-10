class AuditsController < ApplicationController
    before_action :authenticate_user!, only: [:show, :index]

    def show
        @audit= Audit.find params[:id]
        
        @teams = Team.where(audit_id: @audit)

        @rat_report= RatReport.where(audit_id: @audit)

        @company = @audit.company
        
        @evidence = Evidence.new

        @evidences = @audit.evidences.order(created_at: :desc)

        @site = @audit.site  

        @sites = @company.site.order(created_at: :desc)
  
    end

    def index
    
        @audits = current_user.teamed_audits 
    end

end

