RSpec.describe User, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :program_markers }
  
  it "should have a name and email" do
    user = FactoryGirl.create(:user)
    expect(user.name).to eq('Ryu Odagiri')
    expect(user.email).to eq('prof@hangdogs.com')
  end
end