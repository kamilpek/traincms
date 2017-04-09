json.extract! event_guest, :id, :event_id, :author, :email, :ip, :created_at, :updated_at
json.url event_guest_url(event_guest, format: :json)