class CreateSongsWriters < ActiveRecord::Migration
  def change
    create_table :songs_writers do |t|
      t.integer :song_id
      t.integer :writer_id

    end 
  end
end
