require 'spec_helper'

describe "families/index" do
  before(:each) do
    assign(:families, [
      stub_model(Family,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Family,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of families" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
