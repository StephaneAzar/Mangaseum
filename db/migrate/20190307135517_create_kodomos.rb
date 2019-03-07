class CreateKodomos < ActiveRecord::Migration[5.2]
  def change
    create_table :kodomos do |t|
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
