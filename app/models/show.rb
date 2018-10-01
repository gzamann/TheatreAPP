class Show < ApplicationRecord
  validates :time, presence: true, length: {maximum: 4}
  validates :seats, presence: true ,numericality:{only_integer: true}
  has_many :bookings
  belongs_to :audis

  # before_create: do
  #   self.seats = Audis.seats
  # end
  
end