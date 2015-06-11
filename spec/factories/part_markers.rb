FactoryGirl.define do
  factory :part_marker do
    association :part, factory: :part
    association :program_marker, factory: :part_marker
  end
end