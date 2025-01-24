class Rent < ApplicationRecord
  validates :rental_date, presence: true
  validates :return_date, presence: true
  validates :rental_cost, presence: true, numericality: { greater_than: 0, message: "должна быть больше 0" }

  belongs_to :client
  belongs_to :car

  validate :return_date_after_rental_date

  private

  def return_date_after_rental_date
    if return_date.present? && rental_date.present? && return_date <= rental_date
      errors.add(:return_date, "должна быть позже даты аренды")
    end
  end
end
