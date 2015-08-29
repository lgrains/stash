class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :fabric
      t.string :color
      t.string :pattern
      t.float :length
      t.float :width
      t.float :price

      t.timestamps null: false
    end
  end
end
