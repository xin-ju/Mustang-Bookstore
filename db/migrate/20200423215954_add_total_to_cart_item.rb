class AddTotalToCartItem < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :total, :decimal
  end
end
