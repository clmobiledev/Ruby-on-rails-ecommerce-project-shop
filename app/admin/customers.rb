ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :address, :city, :postal_code, :country, :phone_number, :email_address, :credit_card_number, :credit_card_type, :credit_card_expiry_date, :province_id
end
