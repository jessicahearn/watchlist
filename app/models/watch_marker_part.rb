class WatchMarkerPart < ActiveRecord::Base
  has_many :watch_marker_episodes
  belongs_to :watch_marker
  belongs_to :part
end
