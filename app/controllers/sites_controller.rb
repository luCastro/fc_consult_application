class SitesController < ApplicationController

    def index
        
        @company = Company.find params[:company_id]
        @sites = @company.sites.order(created_at: :desc)

    end
end
