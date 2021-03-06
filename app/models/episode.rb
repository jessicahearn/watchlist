# == Schema Information
#
# Table name: episodes
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  time           :integer
#  part_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  sequence_index :integer
#

class Episode < ActiveRecord::Base
  belongs_to :part
  validates :title, presence: true
  validates :part_id, presence: true
end
