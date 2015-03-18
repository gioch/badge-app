class AddCompaniesZonesTable < ActiveRecord::Migration
    def change
        create_table :companies_zones do |t|
            t.integer :company_id, null: false
            t.integer :zone_id, null: false
            
            t.timestamps
        end
    end
end
