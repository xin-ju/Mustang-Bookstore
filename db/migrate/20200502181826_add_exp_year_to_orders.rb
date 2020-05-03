class AddExpYearToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :exp_year, :integer
  end
end
