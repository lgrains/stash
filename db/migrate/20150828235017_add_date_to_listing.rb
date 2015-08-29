class AddDateToListing < ActiveRecord::Migration
  def change
    add_column :listings, :offered_on, :Date
  end
end
