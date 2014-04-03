require 'spec_helper'

describe "species/new" do
  before(:each) do
    assign(:species, stub_model(Species,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new species form" do
    render

    assert_select "form[action=?][method=?]", species_index_path, "post" do
      assert_select "input#species_name[name=?]", "species[name]"
      assert_select "input#species_description[name=?]", "species[description]"
    end
  end
end
