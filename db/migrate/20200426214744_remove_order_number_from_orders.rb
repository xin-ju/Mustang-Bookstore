class RemoveOrderNumberFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :order_number, :integer
  end
end
