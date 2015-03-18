class ZonesController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?
    
    def index
        @zones = Zone.all
    end

    def new
        @zone = Zone.new
    end

    def create
        @zone = Zone.create(zone_params)

        if @zone.save
            redirect_to zones_path
        else
            render 'new'
        end
    end

    def edit
    end

    private
        def zone_params
            params.require(:zone).permit(:name, :color, :all_access)
        end
end
