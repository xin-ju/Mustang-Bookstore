class RemoveShippingInfoFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :shipping_info, :string
  end
end
