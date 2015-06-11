FactoryGirl.define do
  factory :program_marker do
    association :program, factory: :program
    association :user, factory: :user
  end
end