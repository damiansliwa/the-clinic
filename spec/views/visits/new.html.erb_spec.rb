require 'rails_helper'

RSpec.describe "visits/new", type: :view do
  before(:each) do
    assign(:visit, Visit.new(
      :patient => nil,
      :doctor => nil,
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new visit form" do
    render

    assert_select "form[action=?][method=?]", visits_path, "post" do

      assert_select "input[name=?]", "visit[patient_id]"

      assert_select "input[name=?]", "visit[doctor_id]"

      assert_select "input[name=?]", "visit[price]"

      assert_select "textarea[name=?]", "visit[description]"
    end
  end
end
