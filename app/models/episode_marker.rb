# == Schema Information
#
# Table name: episode_markers
#
#  id             :integer          not null, primary key
#  part_marker_id :integer
#  episode_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  completed      :boolean          default(FALSE)
#  elapsed        :integer          default(0)
#
# Indexes
#
#  index_episode_markers_on_episode_id      (episode_id)
#  index_episode_markers_on_part_marker_id  (part_marker_id)
#

class EpisodeMarker < ActiveRecord::Base
  belongs_to :part_marker
  belongs_to :episode
  validates :part_marker_id, presence: true
  validates :episode_id, presence: true
end
