require 'test_helper'

class WatchMarkerEpisodeTest < ActiveSupport::TestCase
  
  def setup
    @episode = episodes(:bem_ep1)
    @part_marker = watch_marker_parts(:bem_marker_series1)
    @ep_marker = @part_marker.watch_marker_episodes.build(watch_marker_part_id: @part_marker.id, episode_id: @episode.id)
  end
  
  test "should be valid?" do
    assert @ep_marker.valid?
  end
  
  test "should have watch marker part id" do
    @ep_marker.watch_marker_part_id = nil
    assert_not @ep_marker.valid?
  end
  
  test "should have episode id" do
    @ep_marker.episode_id = nil
    assert_not @ep_marker.valid?
  end
end
