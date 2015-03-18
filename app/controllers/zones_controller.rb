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
        @zone = find_zone
    end

    def update
        @zone = find_zone

        if @zone.update(zone_params)
            redirect_to zones_path
        else
            render 'edit'
        end
    end

    private
        def find_zone
            Zone.find(params[:id])
        end

        def zone_params
            params.require(:zone).permit(:name, :color, :all_access)
        end
end
