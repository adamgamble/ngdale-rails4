require 'spec_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  describe "Administrators" do
    let (:user) { FactoryGirl.build(:user) }

    it "should allow making a user an admin" do
      user.make_admin!
      user.admin?.should be_true
    end

    it "should return false if user isn't an admin" do
      user.admin?.should be_false
    end
  end
end
