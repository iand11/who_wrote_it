class SongWriter < ActiveRecord::Base
  belongs_to :writer
  belongs_to :song
end
