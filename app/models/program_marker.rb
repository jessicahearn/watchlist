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

class ProgramMarker < ActiveRecord::Base
  has_many :part_markers
  belongs_to :user
  belongs_to :program
  validates :user_id, presence: true
  validates :program_id, presence: true
end
