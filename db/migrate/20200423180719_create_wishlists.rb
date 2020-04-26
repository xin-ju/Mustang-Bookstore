class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.boolean :is_empty

      t.timestamps
    end
  end
end
