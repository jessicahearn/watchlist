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
# Indexes
#
#  index_parts_on_program_id  (program_id)
#

FactoryGirl.define do
  factory :part do
    association :program, factory: :program
  end
end
