class Song < ActiveRecord::Base
  has_many :song_writers
  has_many :writers, through: :song_writers
  has_many :performer_songs
  has_many :performers, through: :performer_songs
end
