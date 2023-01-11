class Post < ApplicationRecord

  belongs_to :user
  has_many :reservation
  has_one_attached :image
end
