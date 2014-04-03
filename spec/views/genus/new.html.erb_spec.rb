require 'spec_helper'

describe "genus/new" do
  before(:each) do
    assign(:genu, stub_model(Genu,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new genu form" do
    render

    assert_select "form[action=?][method=?]", genus_path, "post" do
      assert_select "input#genu_name[name=?]", "genu[name]"
      assert_select "input#genu_description[name=?]", "genu[description]"
    end
  end
end
