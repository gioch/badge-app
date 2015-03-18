class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string, :name
      t.string, :color
      t.boolean :all_access

      t.timestamps
    end
  end
end
