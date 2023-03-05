# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'accounts/edit', type: :view do
  let(:account) do
    Account.create!(
      name: 'MyText',
      user_id: '',
      balance: 1
    )
  end

  before(:each) do
    assign(:account, account)
  end

  it 'renders the edit account form' do
    render

    assert_select 'form[action=?][method=?]', account_path(account), 'post' do
      assert_select 'textarea[name=?]', 'account[name]'

      assert_select 'input[name=?]', 'account[user_id]'

      assert_select 'input[name=?]', 'account[balance]'
    end
  end
end
