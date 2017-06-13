class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
      #t.datetime :created_at
      #t.datetime :update_at
    end
  end
end
