class CreatePlaceAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :place_amenities do |t|
      t.string :amenity_id
      t.string :place_id

      t.timestamps
    end
  end
end
