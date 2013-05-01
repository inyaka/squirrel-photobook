class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.integer :order
      t.datetime :published_at

      t.timestamps
    end
  end
end
