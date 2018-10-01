class Movies < ApplicationRecord
  validates :title, presence: true, length:{maximum: 40}
  validates :rating, presence:true, inclusion: { in: %w(U UA A), message: "%{value} is no valid Catagory" }
  has_many :shows
  belongs_to :audis
end