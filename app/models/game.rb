class Game < ApplicationRecord
  has_many :orders,
           dependent: :destroy
  belongs_to :developer
  belongs_to :genre

  validates :title,
            :stock_quantity,
            :price,
            presence: true
  validates :price,
            :stock_quantity,
            numericality: true
  validates :title,
            uniqueness: true
end
