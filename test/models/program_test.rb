# == Schema Information
#
# Table name: programs
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :text
#  format        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  default_image :string
#

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
