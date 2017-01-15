# == Schema Information
#
# Table name: episode_markers
#
#  id             :integer          not null, primary key
#  part_marker_id :integer
#  episode_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  completed      :boolean          default(FALSE)
#  elapsed        :integer          default(0)
#

require 'test_helper'

class EpisodeMarkerTest < ActiveSupport::TestCase
  
  def setup
    @episode = episodes(:bem_ep1)
    @part_marker = part_markers(:bem_marker_series1)
    @ep_marker = @part_marker.episode_markers.build(part_marker_id: @part_marker.id, episode_id: @episode.id)
  end
  
  test "should be valid?" do
    assert @ep_marker.valid?
  end
  
  test "should have watch marker part id" do
    @ep_marker.part_marker_id = nil
    assert_not @ep_marker.valid?
  end
  
  test "should have episode id" do
    @ep_marker.episode_id = nil
    assert_not @ep_marker.valid?
  end
end
