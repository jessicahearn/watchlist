class Episode < ActiveRecord::Base
  belongs_to :part
  validates :title, presence: true
  validates :part_id, presence: true
end
