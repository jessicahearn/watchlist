require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  
  def setup
    #@program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
    #@program.save
    #@part = @program.parts.create(title: 'Series 1')
    #@part.save
    @part = parts(:bem_series1)
    @episode = @part.episodes.create(title: 'Episode 1', description: 'New folks in town', time: 3056)
  end
  
  test "should be valid" do
    assert @episode.valid?
  end
  
  test "should have title" do
    @episode.title = nil
    assert_not @episode.valid?
  end
  
  test "should have part id" do
    @episode.part_id = nil
    assert_not @episode.valid?
  end
  
  test "part id should be filled in automatically on creation" do
    assert_not @episode.part_id.blank?
  end
end
