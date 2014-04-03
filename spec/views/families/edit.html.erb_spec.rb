require 'spec_helper'

describe "families/edit" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    assert_select "form[action=?][method=?]", family_path(@family), "post" do
      assert_select "input#family_name[name=?]", "family[name]"
      assert_select "input#family_description[name=?]", "family[description]"
    end
  end
end
