class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.references :location, index: true, foreign_key: true
      t.string :name
      t.datetime :perform_at
      t.decimal :fee
      t.string :tax_type
      t.boolean :double

      t.timestamps null: false
    end
  end
end
