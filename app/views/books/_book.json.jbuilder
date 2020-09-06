json.extract! book, :id, :title, :author, :state, :holder, :lend_date, :returning_date, :created_at, :updated_at
json.url book_url(book, format: :json)
