# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'transactions/new', type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
                           description: 'MyText',
                           account_id: '',
                           amount: 1,
                           settlement_id: ''
                         ))
  end

  it 'renders new transaction form' do
    render

    assert_select 'form[action=?][method=?]', transactions_path, 'post' do
      assert_select 'textarea[name=?]', 'transaction[description]'

      assert_select 'input[name=?]', 'transaction[account_id]'

      assert_select 'input[name=?]', 'transaction[amount]'

      assert_select 'input[name=?]', 'transaction[settlement_id]'
    end
  end
end
