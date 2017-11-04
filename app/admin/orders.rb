ActiveAdmin.register Order do
  permit_params :quantity, :total_price, :customer_id
end
