class ChangeListingToFabric < ActiveRecord::Migration
  def change
    rename_table :listings, :fabrics
  end
end
