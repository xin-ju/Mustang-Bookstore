class AddSubtotalToWishlist < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :subtotal, :decimal
  end
end
