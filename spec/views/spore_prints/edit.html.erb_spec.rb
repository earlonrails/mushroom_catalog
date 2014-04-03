require 'spec_helper'

describe "spore_prints/edit" do
  before(:each) do
    @spore_print = assign(:spore_print, stub_model(SporePrint,
      :name => "MyString",
      :description => "MyString",
      :src => "MyString"
    ))
  end

  it "renders the edit spore_print form" do
    render

    assert_select "form[action=?][method=?]", spore_print_path(@spore_print), "post" do
      assert_select "input#spore_print_name[name=?]", "spore_print[name]"
      assert_select "input#spore_print_description[name=?]", "spore_print[description]"
      assert_select "input#spore_print_src[name=?]", "spore_print[src]"
    end
  end
end
