json.extract! subject, :id, :name, :category_id, :average_rating, :description, :created_at, :updated_at
json.url subject_url(subject, format: :json)
