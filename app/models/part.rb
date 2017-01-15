# == Schema Information
#
# Table name: parts
#
#  id         :integer          not null, primary key
#  title      :string
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Part < ActiveRecord::Base
  belongs_to :program
  has_many :episodes
  validates :title, presence: true
  validates :program_id, presence: true
end
