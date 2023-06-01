class Restaurant < ApplicationRecord
  validates_presence_of :name, :address, :category, :phone_number
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  has_many :reviews, dependent: :destroy
end
