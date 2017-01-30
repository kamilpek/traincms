json.extract! article, :id, :title, :category_id, :active, :intro, :content, :visit, :highlight, :created_at, :updated_at
json.url article_url(article, format: :json)