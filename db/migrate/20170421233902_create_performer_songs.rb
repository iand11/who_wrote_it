class CreatePerformerSongs < ActiveRecord::Migration
  def change
    create_table :performer_songs do |t|
      t.integer :performer_id
      t.integer :song_id

    end 
  end
end
