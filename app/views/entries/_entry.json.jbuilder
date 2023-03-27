json.extract! entry, :id, :subject_id, :category_id, :date, :rating, :notes, :created_at, :updated_at
json.url entry_url(entry, format: :json)
