# == Schema Information
#
# Table name: episode_markers
#
#  id             :integer          not null, primary key
#  part_marker_id :integer
#  episode_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  completed      :boolean          default(FALSE)
#  elapsed        :integer          default(0)
#

FactoryGirl.define do
  factory :episode_marker do
    association :episode, factory: :episode
    association :part_marker, factory: :part_marker
  end
end
