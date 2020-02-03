json.extract! weather, :id, :local, :content, :created_at, :updated_at
json.url weather_url(weather, format: :json)
