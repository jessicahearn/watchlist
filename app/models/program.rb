# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  format      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Program < ActiveRecord::Base
  has_many :parts
  validates :title, presence: true
end
