require 'test_helper'

class WatchMarkerPartTest < ActiveSupport::TestCase
  
  def setup
    @part = parts(:bem_series1)
    @marker = watch_markers(:bem_marker)
    @part_marker = @marker.watch_marker_parts.build(part_id: @part.id, watch_marker_id: @marker.id)
  end
  
  test "should be valid" do
    assert @part_marker.valid?
  end
  
  test "should have part id" do
    @part_marker.part_id = nil
    assert_not @part_marker.valid?
  end
  
  test "should have watch marker id" do
    @part_marker.watch_marker_id = nil
    assert_not @part_marker.valid?
  end
end
