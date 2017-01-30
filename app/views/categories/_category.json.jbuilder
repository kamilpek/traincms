json.extract! category, :id, :title, :desc, :active, :created_at, :updated_at
json.url category_url(category, format: :json)