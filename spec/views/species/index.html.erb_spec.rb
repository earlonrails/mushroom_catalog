require 'spec_helper'

describe "species/index" do
  before(:each) do
    assign(:species, [
      stub_model(Species,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Species,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
