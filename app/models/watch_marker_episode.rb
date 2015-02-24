class WatchMarkerEpisode < ActiveRecord::Base
  belongs_to :watch_marker_part
  belongs_to :episode
  validates :watch_marker_part_id, presence: true
  validates :episode_id, presence: true
end
