class CompaniesController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?

    def index
    end

    def new
    end


end
