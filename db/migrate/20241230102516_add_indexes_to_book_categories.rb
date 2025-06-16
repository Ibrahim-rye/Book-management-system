class AddIndexesToBookCategories < ActiveRecord::Migration[6.1]
  def change
    add_index :books_categories, [:book_id, :category_id]
    add_index :books_categories, [:category_id, :book_id]
  end
end
