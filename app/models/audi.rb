class Audi < ApplicationRecord
  validates :number, presence: true, length: {maximum: 5}
  validates :seats, presence: true, numericality:{only_integer: true}
  has_many :shows
  has_many :tickets
  has_many :movies, through: :shows
  belongs_to :theatre
end