class Province < ApplicationRecord
  has_many :customers,
           dependent: :destroy

  validates :name,
            presence: true
  validates :pst_rate,
            :gst_rate,
            :hst_rate,
            numericality: true
end
