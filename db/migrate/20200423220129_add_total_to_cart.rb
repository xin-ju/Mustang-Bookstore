class AddTotalToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :total, :decimal
  end
end
