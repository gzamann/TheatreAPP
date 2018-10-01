class Viewer < ApplicationRecord
  validates :name, presence: true, length:{maximum: 30}
  validates :number, presence: true, numericality:{only_integer: true}, length:{minimum:6, maximum:10}
  validates :age, presence: true, numericality:{only_integer: true}, length:{maximum:2}
  has_many :bookings
end