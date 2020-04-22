class CreateWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlist_items do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
