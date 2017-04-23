class Song < ActiveRecord::Base
  has_many :song_writers
  has_many :writers, through: :song_writers
  has_many :performer_songs
  has_many :performers, through: :performer_songs

  def self.song_name(user_search)
    song = self.find{ |song| song.title == user_search }
  end

  def has_id?
    self.id
  end 
end
