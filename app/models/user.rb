class User < ActiveRecord::Base
  has_many :program_markers
  validates :name, presence: true
end
