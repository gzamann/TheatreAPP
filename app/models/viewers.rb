class Viewers < ApplicationRecord
  validates :name, presense: true, length:{maximum: 30}
  validates :number, presense: true, numericality:{only_integer: true}, length:{minimum:6, maximum:10}
  validates :age, presense: true, numericality:{only_integer: true}, length:{maximum:2}
  has_many :bookings
end