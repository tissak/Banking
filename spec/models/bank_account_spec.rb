require 'spec_helper'

describe BankAccount do
  before(:each) do
    @valid_attributes = {
      :balance => 100,
      :name => "Test Account",
      :number => 123
    }
  end

  it "should create a new instance given valid attributes" do
    BankAccount.create!(@valid_attributes)
  end
    
  it "should increase the balance when a deposit is made" do
    b = BankAccount.create!(@valid_attributes)
    b.deposit 100
    b.balance.should == 200
  end
  
  it "should decrease the balance when a withdrawal is made" do
    b = BankAccount.create!(@valid_attributes)
    b.withdraw 100
    b.balance.should == 0
  end
  
  it "should calculate interest for 1 year correctly" do
    b = BankAccount.create!(@valid_attributes)
    newBalance = b.calculate_interest(1)
    newBalance.should be_close(110.00, 0.1)
  end
  
  it "should calculate interest for 10 years correctly" do
    b = BankAccount.create!(@valid_attributes)
    newBalance = b.calculate_interest(10)
    newBalance.should be_close(259.37, 0.1)
  end
end
