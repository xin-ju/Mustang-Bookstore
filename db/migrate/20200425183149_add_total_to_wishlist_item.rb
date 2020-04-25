class AddTotalToWishlistItem < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlist_items, :total, :decimal
  end
end
