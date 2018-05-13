json.extract! book, :id, :name, :isbn, :price, :user_id, :category_id, :publish_status, :created_at, :updated_at
json.url book_url(book, format: :json)
