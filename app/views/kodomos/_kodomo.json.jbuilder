json.extract! kodomo, :id, :title, :genre, :mangaka, :year, :description, :image_url, :created_at, :updated_at
json.url kodomo_url(kodomo, format: :json)
