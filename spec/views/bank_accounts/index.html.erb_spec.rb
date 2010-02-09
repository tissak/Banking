require 'spec_helper'

describe "/bank_accounts/index.html.erb" do
  include BankAccountsHelper

  before(:each) do
    assigns[:bank_accounts] = [
      stub_model(BankAccount,
        :balance => 9.99,
        :name => "value for name",
        :number => 1
      ),
      stub_model(BankAccount,
        :balance => 9.99,
        :name => "value for name",
        :number => 1
      )
    ]
  end

  it "renders a list of bank_accounts" do
    render
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
