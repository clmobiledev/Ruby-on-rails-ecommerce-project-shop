class Order < ApplicationRecord
  has_many :games
  belongs_to :customer
  
  validates :quantity, :total_price, numericality: true
end
