class Customer < ApplicationRecord
  has_many :orders,
           dependent: :destroy
  belongs_to :province

  validates :first_name,
            :last_name,
            :address,
            :city,
            :postal_code,
            :country,
            presence: true
  validates :credit_card_number,
            :credit_card_expiry_date,
            numericality: true
end
