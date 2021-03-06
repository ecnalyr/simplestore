require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :brief_description => "MyText",
      :full_description => "MyText",
      :meta_keywords => "MyString",
      :sku => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "textarea#product_brief_description", :name => "product[brief_description]"
      assert_select "textarea#product_full_description", :name => "product[full_description]"
      assert_select "input#product_meta_keywords", :name => "product[meta_keywords]"
      assert_select "input#product_sku", :name => "product[sku]"
      assert_select "input#product_price", :name => "product[price]"
    end
  end
end
