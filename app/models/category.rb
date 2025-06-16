class Category < ApplicationRecord
  has_many :book_categories
  has_many :books, through: :book_categories

  def self.ransackable_associations(auth_object = nil)
    ["book_categories", "books"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end
end
