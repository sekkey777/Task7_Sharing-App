class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  has_one_attached :image
  has_many :rooms
  has_many :reservations
end
