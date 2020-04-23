class AddAssetlabelToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :assetlabel, :string
  end
end
