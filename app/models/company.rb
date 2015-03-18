class Company < ActiveRecord::Base
    has_and_belongs_to_many :zones
    validates :name, presence: :true

    def zone_listing
        zone_listing = self.zones.map { |z| z.name }.join ','
        zone_listing
    end
end
