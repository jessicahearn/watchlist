# == Schema Information
#
# Table name: part_markers
#
#  id                :integer          not null, primary key
#  program_marker_id :integer
#  part_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_part_markers_on_part_id            (part_id)
#  index_part_markers_on_program_marker_id  (program_marker_id)
#

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
