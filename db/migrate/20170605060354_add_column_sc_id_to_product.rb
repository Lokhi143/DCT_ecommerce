class AddColumnScIdToProduct < ActiveRecord::Migration
  def change
    #add_column :table_name, :column_name, :column_type
    add_column :products, :sub_category_id, :integer
  end
end
