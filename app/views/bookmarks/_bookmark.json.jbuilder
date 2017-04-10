json.extract! bookmark, :id, :title, :content, :image, :home, :navbar, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)