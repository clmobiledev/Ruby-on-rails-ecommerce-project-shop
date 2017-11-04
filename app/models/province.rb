class Province < ApplicationRecord
  has_many :customers
  
  validates :name, presence: true
  validates :pst_rate, :gst_rate, :hst_rate, numericality: true
end
