class PartMarker < ActiveRecord::Base
  has_many :episode_markers
  belongs_to :program_marker
  belongs_to :part
  validates :program_marker_id, presence: true
  validates :part_id, presence: true
end
