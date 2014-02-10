class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    add_column :videos, :category_id, :integer
  end
end
