class Booking < ApplicationRecord
  validates :name, presence: true, length:{maximum:30}
  validates :seats, presence: true, numericality:{only_integer: true}, length:{maximum:5}
  has_many :tickets , dependent: :destroy
  belongs_to :show

  before_update :seats_book
  after_create :seats_cal
  
  private
    def seats_book
      if seats > Show.seats
        errors.add(:seats, "Not enough seats available.")
      end
    end

    def seats_cal
      @show = Show.find(params[:show_id])
      @seats = Booking.find(params[:seats])
      @show.seats -= @seats
      
      Shows.save
    end
    
end