# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'accounts/new', type: :view do
  before(:each) do
    assign(:account, Account.new(
                       name: 'MyText',
                       user_id: '',
                       balance: 1
                     ))
  end

  it 'renders new account form' do
    render

    assert_select 'form[action=?][method=?]', accounts_path, 'post' do
      assert_select 'textarea[name=?]', 'account[name]'

      assert_select 'input[name=?]', 'account[user_id]'

      assert_select 'input[name=?]', 'account[balance]'
    end
  end
end
