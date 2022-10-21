class Place < ApplicationRecord
    has_many :place_amenities, dependent: :destroy
    has_many :amenities, through: :place_amenities

    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    belongs_to :city, optional: true
    belongs_to :user, optional: true

    
    validates :name, presence: true
    validates :city_id, presence: true
    validates :user_id, presence: true
    validates :description, presence: true
    validates :number_rooms, presence: true
    validates :number_bathrooms, presence: true
    validates :max_guest, presence: true
    validates :price_per_night, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
end
