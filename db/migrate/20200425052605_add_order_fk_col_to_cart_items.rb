class AddOrderFkColToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :cart_items, :order, foreign_key: true
  end
end
