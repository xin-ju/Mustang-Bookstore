class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.string :buyer_name
      t.integer :credit_card_number
      t.string :order_date
      t.string :shipping_info
      t.string :billing_info
      t.float :total

      t.timestamps
    end
  end
end
