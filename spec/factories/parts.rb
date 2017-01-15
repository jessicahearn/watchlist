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

FactoryGirl.define do
  factory :part do
    association :program, factory: :program
  end
end
