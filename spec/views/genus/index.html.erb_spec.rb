require 'spec_helper'

describe "genus/index" do
  before(:each) do
    assign(:genus, [
      stub_model(Genu,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Genu,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of genus" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
