class Company < ActiveRecord::Base
    validates :name, presence: :true

    def zone_listing
        'Zone1, Zone2, ViriZone 1'
    end
end
