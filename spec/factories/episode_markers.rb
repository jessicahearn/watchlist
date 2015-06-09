FactoryGirl.define do
  factory :episode_marker do
    association :episode, factory: :episode
    part_marker_id '1984'
  end
end