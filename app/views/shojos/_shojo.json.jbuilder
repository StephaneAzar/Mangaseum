json.extract! shojo, :id, :title, :genre, :mangaka, :year, :description, :image_url, :created_at, :updated_at
json.url shojo_url(shojo, format: :json)
