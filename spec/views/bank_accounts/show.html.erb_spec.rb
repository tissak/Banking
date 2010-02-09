require 'spec_helper'

describe "/bank_accounts/show.html.erb" do
  include BankAccountsHelper
  before(:each) do
    assigns[:bank_account] = @bank_account = stub_model(BankAccount,
      :balance => 9.99,
      :name => "value for name",
      :number => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/9\.99/)
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1/)
  end
end
