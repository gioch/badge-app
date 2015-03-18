class AddCompaniesZonesTable < ActiveRecord::Migration
    def change
        create_table :companies_zones do |t|
            t.integer :company_id
            t.integer :zone_id
            
            t.timestamps
        end
    end
end
