class AddBookFkColToCartItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :cart_items, :book, foreign_key: true
  end
end
