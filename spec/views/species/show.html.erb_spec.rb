require 'spec_helper'

describe "species/show" do
  before(:each) do
    @species = assign(:species, stub_model(Species,
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
