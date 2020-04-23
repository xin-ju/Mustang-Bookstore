class RemoveQuantityFromCartItem < ActiveRecord::Migration[6.0]
  def change

    remove_column :cart_items, :quantity, :string
  end
end
