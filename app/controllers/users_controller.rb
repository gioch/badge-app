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

    def edit
        @user = find_user
    end

    def update
        @user = find_user

        if @user.update(user_update_params)
            redirect_to users_path
        else
            render 'edit'
        end
    end

    def destroy
        @user = find_user
        
        if @user.destroy
            redirect_to users_path
        end
    end

    private
        def find_user
            User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :name, :second_name, :admin, company_ids:[])
        end

        def user_update_params
            params.require(:user).permit(:name, :second_name, :admin, company_ids:[])
        end
end
