class User < ActiveRecord::Base
  has_many :watch_markers
  validates :name, presence: true
end
