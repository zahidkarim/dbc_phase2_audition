class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string      :title
      t.string      :song_url
      t.string      :album_art
      t.references  :user
      t.references  :playlist

      t.timestamps
    end
  end
end
