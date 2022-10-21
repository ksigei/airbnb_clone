class Amenity < ApplicationRecord
    has_many :place_amenities, dependent: :destroy
    has_many :places, through: :place_amenities
    has_many :users, through: :places
    has_many :reviews, through: :places
    has_many :cities, through: :places
    has_many :states, through: :cities

    validates :name, presence: true
end
