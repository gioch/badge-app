class CompaniesController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?

    def index
        @companies = Company.all
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params)

        if @company.save
            redirect_to companies_path
        else
            render 'new'
        end
    end

    private
        def company_params
            params.require(:company).permit(:name);
        end
end
