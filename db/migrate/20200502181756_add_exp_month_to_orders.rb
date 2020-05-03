class AddExpMonthToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :exp_month, :integer
  end
end
