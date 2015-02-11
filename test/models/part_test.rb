require 'test_helper'

class PartTest < ActiveSupport::TestCase
  
  def setup
    @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
    @program.save
    @part = @program.parts.create(title: 'Series 1')
  end
  
  test "should be valid" do
    assert @part.valid?
  end
  
  test "should have title" do
    @part.title = nil
    assert_not @part.valid?
  end
  
  test "should have program id" do
    @part.program_id = nil
    assert_not @part.valid?
  end
  
  test "program id should be filled in automatically on creation" do
    assert_not @part.program_id.blank?
  end
end
