class AddShippingStateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :shipping_state, :string
  end
end
