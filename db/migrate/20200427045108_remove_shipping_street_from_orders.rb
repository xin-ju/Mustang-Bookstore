class RemoveShippingStreetFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :shipping_street, :string
  end
end
