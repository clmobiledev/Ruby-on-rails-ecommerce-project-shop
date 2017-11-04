class Order < ApplicationRecord
  has_many :games
  belongs_to :customer
end
