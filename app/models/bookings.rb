class Bookings < ApplicationRecord
  validates :name, presence: true, length:{maximum:30}
  validates :seats_book, presence: true, numericality:{only_integer: true}, length:{maximum:5}
  has_many :tickets
  belongs_to :shows
  # dependent :destroy

  private
    def seats_book
      if seats > @shows.seats
        error.add(:seats, "Not enough seats available.")
      end
    end

  after_create :seats_cal
  
  private
    def seats_cal
    @shows.seats = @shows.seats - self.seats
    end
    
end