class CreateArtworkTable < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false, unique: true
      t.string :image_url, null: false
      t.integer :artist_id, null: false, unique: true, index: true
    end
  end
end
