class WatchMarkerEpisode < ActiveRecord::Base
  belongs_to :watch_marker_part
  belongs_to :episode
end
