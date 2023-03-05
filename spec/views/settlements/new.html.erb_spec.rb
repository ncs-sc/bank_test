# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'settlements/new', type: :view do
  before(:each) do
    assign(:settlement, Settlement.new(
                          type: 'MyText',
                          external_reference: 'MyText',
                          external_amount: 1
                        ))
  end

  it 'renders new settlement form' do
    render

    assert_select 'form[action=?][method=?]', settlements_path, 'post' do
      assert_select 'textarea[name=?]', 'settlement[type]'

      assert_select 'textarea[name=?]', 'settlement[external_reference]'

      assert_select 'input[name=?]', 'settlement[external_amount]'
    end
  end
end
