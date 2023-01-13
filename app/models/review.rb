class Review < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    belongs_to :place, optional: true
    belongs_to :user, optional: true

    validates :text, presence: true
    validates :place_id, presence: true
    validates :user_id, presence: true
end
