class AddCartIdToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :cart_id, :bigint
  end
end
