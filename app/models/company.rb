class Company < ActiveRecord::Base
    has_and_belongs_to_many :users
    has_and_belongs_to_many :zones
    validates :name, presence: :true

    # Converts a collection of company's zone names
    # into a formatted string
    def zone_listing
        zone_listing = self.zones.map { |z| z.name }.join ','
    end
end
