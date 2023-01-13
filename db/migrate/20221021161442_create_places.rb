class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      # t.string :user_id, references: :users, null: false
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      # t.string :city_id, references: :cities, index: true
      t.references :city, null: false, foreign_key: true
      t.string :description, limit: 500
      t.integer :number_rooms, default: 0
      t.integer :number_bathrooms, default: 0
      t.integer :max_guest, default: 0
      t.integer :price_per_night, default: 0
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

# place = Place.new(name: "My place", description: "My description", number_rooms: 2, number_bathrooms: 1, max_guest: 4, price_per_night: 100, latitude: 48.856614, longitude: 2.3522219)