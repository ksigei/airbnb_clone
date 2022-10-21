class City < ApplicationRecord
    has_many :places, dependent: :destroy
    belongs_to :state, optional: true

    validates :name, presence: true
    validates :state_id, presence: true

    def self.search(search)
end
