require 'spec_helper'

describe "/bank_accounts/edit.html.erb" do
  include BankAccountsHelper

  before(:each) do
    assigns[:bank_account] = @bank_account = stub_model(BankAccount,
      :new_record? => false,
      :balance => 9.99,
      :name => "value for name",
      :number => 1
    )
  end

  it "renders the edit bank_account form" do
    render

    response.should have_tag("form[action=#{bank_account_path(@bank_account)}][method=post]") do
      with_tag('input#bank_account_balance[name=?]', "bank_account[balance]")
      with_tag('input#bank_account_name[name=?]', "bank_account[name]")
      with_tag('input#bank_account_number[name=?]', "bank_account[number]")
    end
  end
end
