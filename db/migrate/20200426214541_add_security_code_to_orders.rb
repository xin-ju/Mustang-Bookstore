class AddSecurityCodeToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :security_code, :integer
  end
end
