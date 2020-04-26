class AddShippingZipToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :shipping_zip, :bigint
  end
end
