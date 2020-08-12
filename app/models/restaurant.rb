class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy, foreign_key: :restaurant_id
  FOOD = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :category, inclusion: { in: Restaurant::FOOD }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
