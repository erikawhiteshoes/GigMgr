class RemoveFeeFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :fee, :decimal
  end
end
