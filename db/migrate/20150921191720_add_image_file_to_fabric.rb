class AddImageFileToFabric < ActiveRecord::Migration
  def change
    add_column :fabrics, :image_file_name, :string
  end
end
