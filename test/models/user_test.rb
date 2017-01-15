# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Kame", email: "kame@kamekame.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end

  test "should require name" do
    @user.name = nil
    assert_not @user.valid?
  end
  
  test "name should not be blank" do
    @user.name = "    "
    assert_not @user.valid?
  end
end
