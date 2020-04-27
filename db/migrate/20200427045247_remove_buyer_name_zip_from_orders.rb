class RemoveBuyerNameZipFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :buyer_name, :string
  end
end
