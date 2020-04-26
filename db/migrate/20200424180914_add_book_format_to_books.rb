class AddBookFormatToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_format, :string
  end
end
