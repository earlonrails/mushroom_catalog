require 'spec_helper'

describe "species/edit" do
  before(:each) do
    @species = assign(:species, stub_model(Species,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit species form" do
    render

    assert_select "form[action=?][method=?]", species_path(@species), "post" do
      assert_select "input#species_name[name=?]", "species[name]"
      assert_select "input#species_description[name=?]", "species[description]"
    end
  end
end
