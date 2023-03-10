# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'transactions/index', type: :view do
  before(:each) do
    assign(:transactions, [
             Transaction.create!(
               description: 'MyText',
               account_id: '',
               amount: 2,
               settlement_id: ''
             ),
             Transaction.create!(
               description: 'MyText',
               account_id: '',
               amount: 2,
               settlement_id: ''
             )
           ])
  end

  it 'renders a list of transactions' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
  end
end
