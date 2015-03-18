class UsersController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?
    
    def index
    end

    def new
        @user = User.new
    end

    def create
        redirect_to users_path
    end
end
