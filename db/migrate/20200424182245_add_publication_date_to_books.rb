class AddPublicationDateToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :publication_date, :string
  end
end
