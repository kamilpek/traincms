json.extract! comment, :id, :article_id, :author, :content, :email, :ip, :created_at, :updated_at
json.url comment_url(comment, format: :json)