require 'spec_helper'
require 'factory_girl_rails'

describe User do
  before :each do 
  @user = Factory.build(:user)
  end
 
  it "should not be valid without a name" do 
    @user.username = nil
    @user.should_not be_valid
  end

  it "should not be valid without an email" do 
    @user.email = nil
    @user.should_not be_valid
  end

  it "should not be valid without an unique email address" do 
    @user.email.uniq? == false
    @user.should_not be_valid
  end
end