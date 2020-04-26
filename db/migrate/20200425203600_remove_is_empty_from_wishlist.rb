class RemoveIsEmptyFromWishlist < ActiveRecord::Migration[6.0]
  def change

    remove_column :wishlists, :is_empty, :boolean
  end
end
