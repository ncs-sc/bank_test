# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'settlements/index', type: :view do
  before(:each) do
    assign(:settlements, [
             Settlement.create!(
               type: 'MyText',
               external_reference: 'MyText',
               external_amount: 2
             ),
             Settlement.create!(
               type: 'MyText',
               external_reference: 'MyText',
               external_amount: 2
             )
           ])
  end

  it 'renders a list of settlements' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
