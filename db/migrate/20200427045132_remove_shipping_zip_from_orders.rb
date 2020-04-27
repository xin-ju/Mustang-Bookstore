class RemoveShippingZipFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :shipping_zip, :bigint
  end
end
