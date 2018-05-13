class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :isbn, presence: true
  validates :price, presence: true

  def author_name
    user.name || user.email.split("@")[0] rescue "Guest"
   end

  def category_name
    category.name
  end

  def is_published?
    (publish_status == true ? "published" : "Not published")
  end

end
