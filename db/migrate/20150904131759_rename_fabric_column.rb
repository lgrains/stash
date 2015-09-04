class RenameFabricColumn < ActiveRecord::Migration
  def change
    rename_column :fabrics, :fabric, :fabric_type
  end
end
