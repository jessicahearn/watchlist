# == Schema Information
#
# Table name: program_markers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  program_id :integer
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProgramMarkerTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:kame)
    @program = programs(:bem)
    @marker = @user.program_markers.build(program_id: @program.id)
  end
  
  test "should be valid" do
    assert @marker.valid?
  end
  
  test "should have user id" do
    @marker.user_id = nil
    assert_not @marker.valid?
  end
  
  test "should have program id" do
    @marker.program_id = nil
    assert_not @marker.valid?
  end
end
