class State < ApplicationRecord
    has_many :cities, dependent: :destroy
    has_many :places, through: :cities
    has_many :users, through: :places
    has_many :reviews, through: :places
    has_many :amenities, through: :places
    has_many :place_amenities, through: :places

    validates :name, presence: true
    
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
