class AddUnitPriceToWishlistItem < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlist_items, :unit_price, :decimal
  end
end
