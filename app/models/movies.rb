class Movies < ApplicationRecord
  validates :title, presense: true, length:{maximum: 40}
  validates :rating, presense:true, inclusion: { in: %w(U UA A), message: "%{value} is no valid Catagory" }
  has_many :shows
  belongs_to :audis
end