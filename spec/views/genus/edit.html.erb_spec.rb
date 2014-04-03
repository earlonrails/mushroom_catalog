require 'spec_helper'

describe "genus/edit" do
  before(:each) do
    @genu = assign(:genu, stub_model(Genu,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit genu form" do
    render

    assert_select "form[action=?][method=?]", genu_path(@genu), "post" do
      assert_select "input#genu_name[name=?]", "genu[name]"
      assert_select "input#genu_description[name=?]", "genu[description]"
    end
  end
end
