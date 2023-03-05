# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'settlements/edit', type: :view do
  let(:settlement) do
    Settlement.create!(
      type: 'MyText',
      external_reference: 'MyText',
      external_amount: 1
    )
  end

  before(:each) do
    assign(:settlement, settlement)
  end

  it 'renders the edit settlement form' do
    render

    assert_select 'form[action=?][method=?]', settlement_path(settlement), 'post' do
      assert_select 'textarea[name=?]', 'settlement[type]'

      assert_select 'textarea[name=?]', 'settlement[external_reference]'

      assert_select 'input[name=?]', 'settlement[external_amount]'
    end
  end
end
