json.extract! manga, :id, :title, :genre, :mangaka, :year, :description, :image_url, :created_at, :updated_at
json.url manga_url(manga, format: :json)
