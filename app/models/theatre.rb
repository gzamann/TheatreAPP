class Theatre < ApplicationRecord
  validates :name, presence: true, length:{maximum: 30}
  validates :address, presence:true, length:{maximum: 50}
  validates :number, presence: true, numericality:{only_integer: true}, length:{maximum:10}
  has_many :audis, dependent: :destroy
  has_many :bookings

  # after_create :testit


  # private
  #   def testit
  #     Theatre.find(1).name = "myname"
      
  #   end
end