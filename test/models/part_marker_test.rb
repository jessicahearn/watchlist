require 'test_helper'

class PartMarkerTest < ActiveSupport::TestCase
  
  def setup
    @part = parts(:bem_series1)
    @marker = program_markers(:bem_marker)
    @part_marker = @marker.part_markers.build(part_id: @part.id, program_marker_id: @marker.id)
  end
  
  test "should be valid" do
    assert @part_marker.valid?
  end
  
  test "should have part id" do
    @part_marker.part_id = nil
    assert_not @part_marker.valid?
  end
  
  test "should have watch marker id" do
    @part_marker.program_marker_id = nil
    assert_not @part_marker.valid?
  end
end
