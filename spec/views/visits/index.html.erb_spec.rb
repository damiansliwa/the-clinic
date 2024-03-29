require 'rails_helper'

RSpec.describe "visits/index", type: :view do
  before(:each) do
    assign(:visits, [
      Visit.create!(
        :patient => nil,
        :doctor => nil,
        :price => 2.5,
        :description => "MyText"
      ),
      Visit.create!(
        :patient => nil,
        :doctor => nil,
        :price => 2.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of visits" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
