FactoryGirl.define do
  factory :episode_marker do
    association :episode, factory: :episode
    association :part_marker, factory: :part_marker
  end
end