class Bookings < ApplicationRecord
  validates :name, presense: true, length:{maximum:30}
  validates :seats, presense: true, numericality:{only_integer: true}, length:{maximum:10}
  has_many :tickets
  belongs_to :shows

  after_create :seats_cal
  
  private
    def seats_cal
    @shows.seats = @shows.seats - self.seats
    end

end