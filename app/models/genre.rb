class Genre < ApplicationRecord
  has_many :games,
           dependent: :destroy

  validates :name,
            presence: true
  validates :name,
            uniqueness: true
end
