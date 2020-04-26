class RemoveOrderDateFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :order_date, :string
  end
end
