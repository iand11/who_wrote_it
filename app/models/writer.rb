class Writer < ActiveRecord::Base
  has_many :song_writers
  has_many :songs, through: :song_writers
  has_many :performers, through: :performers
end
