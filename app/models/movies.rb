class Movies < ApplicationRecord
  validates :title, presense: true, length:{maximum: 40}
  validates :category, presense:true, length:{maximum: 10}
  has_many :shows
  belongs_to :audis
end