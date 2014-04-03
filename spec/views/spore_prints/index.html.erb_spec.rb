require 'spec_helper'

describe "spore_prints/index" do
  before(:each) do
    assign(:spore_prints, [
      stub_model(SporePrint,
        :name => "Name",
        :description => "Description",
        :src => "Src"
      ),
      stub_model(SporePrint,
        :name => "Name",
        :description => "Description",
        :src => "Src"
      )
    ])
  end

  it "renders a list of spore_prints" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Src".to_s, :count => 2
  end
end
