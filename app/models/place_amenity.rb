class PlaceAmenity < ApplicationRecord
    belongs_to :place, optional: true
    belongs_to :amenity, optional: true

    validates :place_id, presence: true
    validates :amenity_id, presence: true
end
