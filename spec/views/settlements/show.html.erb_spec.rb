require 'rails_helper'

RSpec.describe "settlements/show", type: :view do
  before(:each) do
    assign(:settlement, Settlement.create!(
      type: "MyText",
      external_reference: "MyText",
      external_amount: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
