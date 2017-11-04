class Genre < ApplicationRecord
  has_many :games
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
