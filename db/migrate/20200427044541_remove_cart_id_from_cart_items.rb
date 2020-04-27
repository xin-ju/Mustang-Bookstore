class RemoveCartIdFromCartItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :cart_items, :cart_id, :bigint
  end
end
