class Review < ApplicationRecord
  validates_presence_of :rating, :content
  validates_numericality_of :rating, only_integer: true
  validates :rating, inclusion: { in: 0..5 }
  belongs_to :restaurant
end
