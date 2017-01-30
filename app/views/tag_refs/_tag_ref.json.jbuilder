json.extract! tag_ref, :id, :tag_id, :article_id, :created_at, :updated_at
json.url tag_ref_url(tag_ref, format: :json)