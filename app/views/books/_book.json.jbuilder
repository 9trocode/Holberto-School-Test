json.extract! book, :id, :title, :author, :categories_id, :libary_locations_id, :created_at, :updated_at
json.url book_url(book, format: :json)
