class AddSubTotalToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :subtotal, :decimal
  end
end
