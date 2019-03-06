class CreateMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :genre
      t.string :mangaka
      t.integer :year
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
