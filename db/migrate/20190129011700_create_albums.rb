class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.references :artist, foreign_key: true
      t.string :name
      t.date :release_at

      t.timestamps
    end
  end
end
