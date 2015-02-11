require 'test_helper'

class ProgramTest < ActiveSupport::TestCase
  
  def setup
    @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
  end
  
  test "should be valid" do
    assert @program.valid?
  end
  
  test "should require title" do
    @program.title = nil
    assert_not @program.valid?
  end
end
