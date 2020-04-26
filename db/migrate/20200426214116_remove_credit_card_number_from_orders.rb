class RemoveCreditCardNumberFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :credit_card_number, :integer
  end
end
