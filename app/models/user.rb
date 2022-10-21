class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :cities, through: :places
  has_many :states, through: :cities
  has_many :place_amenities, through: :places
  has_many :amenities, through: :place_amenities

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :phone_number, presence: true
end
