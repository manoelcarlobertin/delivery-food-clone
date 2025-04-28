class Dish < ApplicationRecord
  belongs_to :restaurant

  validates :name, :description, :price, :image_url, presence: true
end
