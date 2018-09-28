class Theatre <ApplicationRecord
    validates :name, presence: true, length:{maximum: 30}
    validates :address, presence:true, length:{maximum: 50}
    validates :number, presence: true, numericality:{only_integer: true}, length:{maximum:10}
    has_many :audis
    has_many :bookings
end