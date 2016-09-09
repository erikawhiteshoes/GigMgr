class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1, null: false, default: ''
      t.string :street_2
      t.string :city, null: false, default: ''
      t.string :state, null: false, default: ''
      t.string :zip, null: false, default: ''

      t.timestamps null: false
    end
  end
end
