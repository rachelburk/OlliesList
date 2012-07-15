require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :dscrp => "MyText",
      :price => 1,
      :sold => false
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "textarea#item_dscrp", :name => "item[dscrp]"
      assert_select "input#item_price", :name => "item[price]"
      assert_select "input#item_sold", :name => "item[sold]"
    end
  end
end
