require 'spec_helper'

describe "spore_prints/show" do
  before(:each) do
    @spore_print = assign(:spore_print, stub_model(SporePrint,
      :name => "Name",
      :description => "Description",
      :src => "Src"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Src/)
  end
end
