require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :dscrp => "MyText",
      :price => 1,
      :sold => false
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "textarea#item_dscrp", :name => "item[dscrp]"
      assert_select "input#item_price", :name => "item[price]"
      assert_select "input#item_sold", :name => "item[sold]"
    end
  end
end
