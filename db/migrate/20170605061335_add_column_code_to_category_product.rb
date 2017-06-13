class AddColumnCodeToCategoryProduct < ActiveRecord::Migration
  def change
    add_column :products, :code, :string
    add_column :categories, :code, :string
  end
end
