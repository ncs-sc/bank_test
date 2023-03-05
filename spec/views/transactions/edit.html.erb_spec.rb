require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      description: "MyText",
      account_id: "",
      amount: 1,
      settlement_id: ""
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "textarea[name=?]", "transaction[description]"

      assert_select "input[name=?]", "transaction[account_id]"

      assert_select "input[name=?]", "transaction[amount]"

      assert_select "input[name=?]", "transaction[settlement_id]"
    end
  end
end
