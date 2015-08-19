class AddCategories < ActiveRecord::Migration
  def change
    add_column :videos, :category_id, :integer

    create_table :categories do |t|
      t.string :name
      t.timestamps 
    end
  end
end
