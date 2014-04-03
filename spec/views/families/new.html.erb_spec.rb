require 'spec_helper'

describe "families/new" do
  before(:each) do
    assign(:family, stub_model(Family,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new family form" do
    render

    assert_select "form[action=?][method=?]", families_path, "post" do
      assert_select "input#family_name[name=?]", "family[name]"
      assert_select "input#family_description[name=?]", "family[description]"
    end
  end
end
