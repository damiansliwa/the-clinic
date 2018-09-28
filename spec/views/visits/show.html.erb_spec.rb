require 'rails_helper'

RSpec.describe "visits/show", type: :view do
  before(:each) do
    @visit = assign(:visit, Visit.create!(
      :price => 2.5,
      :description => "MyText",
      :patient => nil,
      :doctor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
