class Author < ApplicationRecord
  has_many :books

  def self.ransackable_attributes(auth_object = nil)
    ["bio", "created_at", "id", "name", "updated_at"]
  end

end
