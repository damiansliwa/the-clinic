require 'rails_helper'

RSpec.describe "visits/edit", type: :view do
  before(:each) do
    @visit = assign(:visit, Visit.create!(
      :price => 1.5,
      :description => "MyText",
      :patient => nil,
      :doctor => nil
    ))
  end

  it "renders the edit visit form" do
    render

    assert_select "form[action=?][method=?]", visit_path(@visit), "post" do

      assert_select "input[name=?]", "visit[price]"

      assert_select "textarea[name=?]", "visit[description]"

      assert_select "input[name=?]", "visit[patient_id]"

      assert_select "input[name=?]", "visit[doctor_id]"
    end
  end
end
