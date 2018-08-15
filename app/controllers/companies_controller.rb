class CompaniesController < ApplicationController
    
    before_action :authenticate_user!, only: [:new,:show, :index, :create]
    
    def new
        @company = Company.new
    end

    def create
        @company =Company.new company_params

        if @company.save
            redirect_to company_path(@company)
        else
            render :new
        end
    end

    def show
        @company = Company.find params[:id]
    end

    def index
        @companies = Company.all
    end

    private   
    def company_params
        params.require(:company).permit(:name, :neighborhood, :city, :zip_code, :cnpj, 
        :phone, :contact_name, :contact_email, :current_certification)
    end
end

