# == Schema Information
#
# Table name: program_markers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  program_id :integer
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_program_markers_on_program_id  (program_id)
#  index_program_markers_on_user_id     (user_id)
#

class ProgramMarker < ActiveRecord::Base
  has_many :part_markers
  belongs_to :user
  belongs_to :program
  validates :user_id, presence: true
  validates :program_id, presence: true
end
