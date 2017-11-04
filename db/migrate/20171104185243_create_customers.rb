class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :phone_number
      t.string :email_address
      t.string :credit_card_number
      t.string :credit_card_type
      t.string :credit_card_expiry_date

      t.timestamps
    end
  end
end
