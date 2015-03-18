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

    def edit
        @company = find_company
    end

    def update
        @company = find_company

        if @company.update(company_params)
            redirect_to companies_path
        else
            render 'edit'
        end
    end

    def destroy
        @company = find_company
        if @company.destroy
            redirect_to companies_path
        end
    end

    private
        def find_company
            Company.find(params[:id])
        end

        def company_params
            params.require(:company).permit(:name)
        end
end
