class Part < ActiveRecord::Base
  belongs_to :program
  has_many :episodes
  validates :title, presence: true
  validates :program_id, presence: true
end
