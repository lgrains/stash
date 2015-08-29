class AddFieldsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :description, :text
    add_column :listings, :treated, :boolean
    add_column :listings, :treatment_method, :string
  end
end
