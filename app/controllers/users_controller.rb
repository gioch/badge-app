class UsersController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.save
            redirect_to users_path
        else
            render 'new'
        end
    end

    private
        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :name, :second_name, :admin)
        end
end
