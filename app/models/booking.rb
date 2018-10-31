class Booking < ApplicationRecord
  validates :name, presence: true, length:{maximum:30}
  validates :seats, presence: true, numericality:{only_integer: true}, length:{maximum:5}
  validate :seats_book
  has_many :tickets , dependent: :destroy
  belongs_to :show
  
  after_commit :seats_cal, :on(:create, :update)
  
  private
    def seats_book
      if self.seats > self.show.seats
        errors.add(:seats, "Not enough seats available.")
      end
    end

    def seats_cal
      @show = Show.find_by(:id)
      @seats = Booking.find
      @show.seats -= @seats
    end
    
end