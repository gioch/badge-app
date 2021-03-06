class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    layout :layout_by_resource

    def layout_by_resource
        (devise_controller?) ? 'login' : 'application'
    end

    def admin_authorized?
        redirect_to dashboard_path unless current_user.admin?
    end
end
