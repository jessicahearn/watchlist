FactoryGirl.define do
  factory :episode do
    association :part, factory: :part
    title "my title"
    time "4537"
  end
end