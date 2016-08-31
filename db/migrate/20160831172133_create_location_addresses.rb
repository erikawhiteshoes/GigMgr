class CreateLocationAddresses < ActiveRecord::Migration
  def change
    create_table :location_addresses do |t|
      t.references :location, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
