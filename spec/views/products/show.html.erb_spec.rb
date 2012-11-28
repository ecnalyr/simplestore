require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :brief_description => "MyText",
      :full_description => "MyText",
      :meta_keywords => "Meta Keywords",
      :image_link => "Image Link",
      :sku => "Sku",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Meta Keywords/)
    rendered.should match(/Image Link/)
    rendered.should match(/Sku/)
    rendered.should match(/9.99/)
  end
end
