class Shows < ApplicationRecord
  validates :time, presense: true, length: {maximum: 4}
  validates :seats, presense: true ,numericality:{only_integer: true}
  has_many :bookings
  belongs_to :audis

  before_create: do
    self.seats = @audi.seats
end