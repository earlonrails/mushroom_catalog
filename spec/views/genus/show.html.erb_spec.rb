require 'spec_helper'

describe "genus/show" do
  before(:each) do
    @genu = assign(:genu, stub_model(Genu,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
