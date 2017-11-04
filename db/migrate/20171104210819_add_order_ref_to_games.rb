class AddOrderRefToGames < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :order, foreign_key: true
  end
end
