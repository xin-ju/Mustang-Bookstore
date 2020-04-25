class AddTotalToWishlist < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :total, :decimal
  end
end
