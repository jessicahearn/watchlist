require "rails_helper"

RSpec.describe Episode do
  it "should be valid" do
  
    @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
    @program.save
    @part = @program.parts.create(title: 'Series 1')
    @part.save
    @episode = @part.episodes.create(title: 'Episode 1', description: 'New folks in town', time: 3056)
  
  
    expect(@episode).to be_valid
  end
end