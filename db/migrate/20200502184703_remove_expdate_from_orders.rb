class RemoveExpdateFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :exp_date, :string

    #remove_column :orders, :date, :string
  end
end
