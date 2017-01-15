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
# Indexes
#
#  index_episodes_on_part_id  (part_id)
#

FactoryGirl.define do
  factory :episode do
    association :part, factory: :part
    title "my title"
    time "4537"
  end
end
