class AddPageNumberToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :page_number, :integer
  end
end
