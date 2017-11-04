class Game < ApplicationRecord
  has_many :orders
  belongs_to :developer
  belongs_to :genre
end
