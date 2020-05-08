class AddBookFkColToOrderItems < ActiveRecord::Migration[6.0]
  def change
    # add_reference :order_items, :book, foreign_key: true
  end
end
