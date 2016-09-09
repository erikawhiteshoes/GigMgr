class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.references :location, index: true, foreign_key: true
      t.string :name, null: false, default: ''
      t.datetime :performance_at
      t.decimal :fee
      t.string :tax_type, null: false, default: ''
      t.boolean :double, null: false, default: false

      t.timestamps null: false
    end
  end
end
