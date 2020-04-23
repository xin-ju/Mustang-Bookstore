class AddBookFkColToWishlistItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :wishlist_items, :book, foreign_key: true
  end
end
