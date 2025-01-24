class Car < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :release_year, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0, message: "должна быть больше 0" }

  has_many :rents
end
