class Client < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "должен быть корректным" }
  validates :phone_number, presence: true, uniqueness: true,
            format: { with: /\A\+\d{11}\z/, message: "должен начинаться с '+' и содержать 11 цифр" }
  validates :address, presence: true

  has_many :rents
end
