# == Schema Information
#
# Table name: program_markers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  program_id :integer
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_program_markers_on_program_id  (program_id)
#  index_program_markers_on_user_id     (user_id)
#

FactoryGirl.define do
  factory :program_marker do
    association :program, factory: :program
    association :user, factory: :user
  end
end
