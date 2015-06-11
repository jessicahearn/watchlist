FactoryGirl.define do
  factory :part do
    association :program, factory: :program
  end
end