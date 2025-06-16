class Book < ApplicationRecord
  belongs_to :author
  has_many :book_categories
  has_many :categories, through: :book_categories

  def self.ransackable_associations(auth_object = nil)
    ["author"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["author_id", "created_at", "description", "id", "title", "updated_at"]
  end
end
