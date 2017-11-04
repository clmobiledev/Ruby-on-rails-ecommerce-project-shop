ActiveAdmin.register Game do
  permit_params :title, :release_date, :price, :stock_quantity, :image_url, :developer_id, :genre_id, :order_id
end
