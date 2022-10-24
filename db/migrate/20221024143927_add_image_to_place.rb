class AddImageToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :cover_image, :string
  end
end
