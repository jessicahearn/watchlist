# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  format      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe Program do
  it "should be valid" do
    
    @program = Program.new(title: 'Yokai Ningen Bem', description: 'Three monsters wander the earth helping humans while searching for their own humanity', format: 'Renzoku')
  
    expect(@program).to be_valid
  end
end
