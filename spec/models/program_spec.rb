require "rails_helper"

RSpec.describe Program do
  @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
  it "should be valid" do
    expect(@program).to be_valid
  end
end