# == Schema Information
#
# Table name: part_markers
#
#  id                :integer          not null, primary key
#  program_marker_id :integer
#  part_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class PartMarker < ActiveRecord::Base
  has_many :episode_markers
  belongs_to :program_marker
  belongs_to :part
  validates :program_marker_id, presence: true
  validates :part_id, presence: true
end
