class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy

  validates :name, :address, :category, :image_url, presence: true
end
