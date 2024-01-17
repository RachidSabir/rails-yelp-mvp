class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, :inclusion => 0..5, numericality: { only_integer: true }
end
