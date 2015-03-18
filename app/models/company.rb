class Company < ActiveRecord::Base
    has_and_belongs_to_many :zones
    validates :name, presence: :true

    def zone_listing
        listing = ''
        self.zones.each do |zone|
            listing += zone.name + ','
        end
    end
end
