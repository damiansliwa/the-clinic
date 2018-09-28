require 'rails_helper'

RSpec.describe "visits/new", type: :view do
  before(:each) do
    assign(:visit, Visit.new(
      :price => 1.5,
      :description => "MyText",
      :patient => nil,
      :doctor => nil
    ))
  end

  it "renders new visit form" do
    render

    assert_select "form[action=?][method=?]", visits_path, "post" do

      assert_select "input[name=?]", "visit[price]"

      assert_select "textarea[name=?]", "visit[description]"

      assert_select "input[name=?]", "visit[patient_id]"

      assert_select "input[name=?]", "visit[doctor_id]"
    end
  end
end
