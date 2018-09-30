class Bookings < ApplicationRecord
  validates :name, presence: true, length:{maximum:30}
  validates :seats_book, presence: true, numericality:{only_integer: true}, length:{maximum:5}
  has_many :tickets , dependent: :destroy
  belongs_to :shows

  after_create :seats_cal
  
  private
    def seats_book
      if seats > Shows.seats
        errors.add(:seats, "Not enough seats available.")
      end
    end

    def seats_cal
    Shows.seats = Shows.seats - self.seats

    Shows.save
    end
    
end