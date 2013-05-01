class CreateAlbum2photos < ActiveRecord::Migration
  def change
    create_table :album2photos do |t|
      t.integer :album_id
      t.datetime :published_at

      t.timestamps
    end
  end
end
