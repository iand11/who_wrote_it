class CreatePerformersSongs < ActiveRecord::Migration
  def change
    create_table :performers_songs do |t|
      t.integer :song_id
      t.integer :performer_id

    end 
  end
end
