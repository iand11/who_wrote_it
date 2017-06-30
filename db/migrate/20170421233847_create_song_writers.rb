class CreateSongWriters < ActiveRecord::Migration
  def change
    create_table :song_writers do |t|
      t.integer :song_id
      t.integer :writer_id

    end 
  end
end
