class Performer < ActiveRecord::Base
  has_many :performer_songs
  has_many :songs, through: :performer_songs
  has_many :writers, through: :writers
end
