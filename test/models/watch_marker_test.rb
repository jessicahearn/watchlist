require 'test_helper'

class WatchMarkerTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Kame", email: "kame@kamekame.com")
    @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
    @marker = @user.watch_markers.build(program_id: @program.id)
  end
  
  test "should be valid" do
    assert @marker.valid?
  end
end
