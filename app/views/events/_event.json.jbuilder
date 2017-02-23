json.extract! event, :id, :title, :content, :active, :highlight, :visit, :followers, :created_at, :updated_at
json.url event_url(event, format: :json)