require 'spec_helper'

describe "spore_prints/new" do
  before(:each) do
    assign(:spore_print, stub_model(SporePrint,
      :name => "MyString",
      :description => "MyString",
      :src => "MyString"
    ).as_new_record)
  end

  it "renders new spore_print form" do
    render

    assert_select "form[action=?][method=?]", spore_prints_path, "post" do
      assert_select "input#spore_print_name[name=?]", "spore_print[name]"
      assert_select "input#spore_print_description[name=?]", "spore_print[description]"
      assert_select "input#spore_print_src[name=?]", "spore_print[src]"
    end
  end
end
