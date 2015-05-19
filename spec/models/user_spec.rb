RSpec.describe User do
  it { should validate_presence_of :name }
  it { should have_many :program_markers }
  
  it "should have a name" do
    user = FactoryGirl.create(:user)
    
    #its(:name) { should == 'Ryu Odagiri' }
    expect(user.name).to eq('Ryu Odagiri')
    #its(:email) { should == 'prof@hangdogs.com' }
  end
end