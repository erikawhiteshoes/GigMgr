class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.references :gig, index: true, foreign_key: true
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
