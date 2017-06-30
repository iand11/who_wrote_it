class PerformerSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :performer
end
