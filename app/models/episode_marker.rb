class EpisodeMarker < ActiveRecord::Base
  belongs_to :part_marker
  belongs_to :episode
  validates :part_marker_id, presence: true
  validates :episode_id, presence: true
end
