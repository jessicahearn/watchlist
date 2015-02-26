class ProgramMarker < ActiveRecord::Base
  has_many :part_markers
  belongs_to :user
  belongs_to :program
  validates :user_id, presence: true
  validates :program_id, presence: true
end
