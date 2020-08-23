json.extract! book, :id, :title, :author, :categories_id, :library_location_id, :created_at, :updated_at
json.url book_url(book, format: :json)
