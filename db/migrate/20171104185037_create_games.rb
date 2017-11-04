class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.date :release_date
      t.decimal :price
      t.integer :stock_quantity
      t.string :image_url

      t.timestamps
    end
  end
end
