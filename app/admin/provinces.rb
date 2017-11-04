ActiveAdmin.register Province do
  permit_params :name, :abbreviation, :pst_rate, :gst_rate, :hst_rate
end
