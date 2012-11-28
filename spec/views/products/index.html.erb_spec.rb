require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :brief_description => "MyText",
        :full_description => "MyText",
        :meta_keywords => "Meta Keywords",
        :image_link => "Image Link",
        :sku => "Sku",
        :price => "9.99"
      ),
      stub_model(Product,
        :name => "Name",
        :brief_description => "MyText",
        :full_description => "MyText",
        :meta_keywords => "Meta Keywords",
        :image_link => "Image Link",
        :sku => "Sku",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Meta Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "Image Link".to_s, :count => 2
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
