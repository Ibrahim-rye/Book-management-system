class RenameBooksCategoriesToBookCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :books_categories, :book_categories
  end
end
