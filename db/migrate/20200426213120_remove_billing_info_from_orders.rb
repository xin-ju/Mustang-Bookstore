class RemoveBillingInfoFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :billing_info, :string
  end
end
