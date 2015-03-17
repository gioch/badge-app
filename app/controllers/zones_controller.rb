class ZonesController < ApplicationController
    before_filter :authenticate_user!
    before_filter :admin_authorized?
    
    def index
    end
end
