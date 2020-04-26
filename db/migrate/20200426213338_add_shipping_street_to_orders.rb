class AddShippingStreetToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :shipping_street, :string
  end
end
