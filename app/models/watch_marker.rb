class WatchMarker < ActiveRecord::Base
  has_many :watch_marker_parts
  belongs_to :user
  belongs_to :program
  validates :user_id, presence: true
  validates :program_id, presence: true
end
