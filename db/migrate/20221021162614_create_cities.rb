class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :state_id, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
# new state
# state = State.new(name: "New York")
# new city
# city = City.new(name: "New York City", state_id: 1)
# new review
# review = Review.new(content: "My review", rating: 5, place_id: 1, user_id: 1)
# new place_amenity
# place_amenity = PlaceAmenity.new(place_id: 1, amenity_id: 1)
# new amenity
# amenity = Amenity.new(name: "Wifi")