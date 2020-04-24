class RemoveIsEmptyFromCart < ActiveRecord::Migration[6.0]
  def change

    remove_column :carts, :is_empty, :boolean
  end
end
