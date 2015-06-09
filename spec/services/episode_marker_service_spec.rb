require "rails_helper"

RSpec.describe EpisodeMarkerService do
  context "set_timecode_from_completed" do
    let(:episode_marker) { FactoryGirl.create(:episode_marker) }
    
    it "marks completed if episode is complete" do
      expect(episode_marker.elapsed).to eq(0)
    end
  end
end