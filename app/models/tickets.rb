class Tickets < ApplicationRecord
  validates :number, presense: true, numericality:{only_integer: true}, length:{minimum:3, maximum:10}
  belongs_to :bookings
  belongs_to :movies
  belongs_to :audis
end