json.extract! imagepost, :id, :title, :created_at, :updated_at
json.url imagepost_url(imagepost, format: :json)
