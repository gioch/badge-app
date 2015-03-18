class CreateCompaniesUsersTable < ActiveRecord::Migration
  def change
    create_table :companies_users do |t|
        t.integer :company_id, null: false
        t.integer :user_id, null: false

        t.timestamps
    end
  end
end
