class BookCategory < ApplicationRecord
  belongs_to :book
  belongs_to :category

  def self.ransackable_attributes(auth_object = nil)
    ["book_id", "category_id", "created at", "id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["book", "category"]
  end
end
