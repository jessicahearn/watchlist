class WatchMarker < ActiveRecord::Base
  has_many :watch_marker_parts
  belongs_to :user
  belongs_to :program
end
