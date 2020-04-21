class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.string :quantity
      t.string :integer

      t.timestamps
    end
  end
end
