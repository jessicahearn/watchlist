require "rails_helper"

RSpec.describe EpisodeMarkerService do
  context "set_timecode_from_completed" do
    let(:episode_marker) { FactoryGirl.create(:episode_marker) }
    #let(episode_marker.elapsed) { Episode.find(episode_marker.episode_id).time }
    
    it "sets timecode if episode is completed" do
      #episode_marker.elapsed = Episode.find(episode_marker.episode_id).time
      params = {}
      params[:id] = episode_marker.id
      episode_marker_service = EpisodeMarkerService.new(params)
      expect(episode_marker.elapsed).to eq(0)
      episode_marker_service.set_timecode_from_completed
      expect(episode_marker.elapsed).to eq(Episode.find(episode_marker.episode_id).time)
    end
  end
end