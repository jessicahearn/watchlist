# == Schema Information
#
# Table name: part_markers
#
#  id                :integer          not null, primary key
#  program_marker_id :integer
#  part_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :part_marker do
    association :part, factory: :part
    association :program_marker, factory: :part_marker
  end
end
