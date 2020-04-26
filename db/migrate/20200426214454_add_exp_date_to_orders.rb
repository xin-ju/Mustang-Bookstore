class AddExpDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :exp_date, :date
  end
end
