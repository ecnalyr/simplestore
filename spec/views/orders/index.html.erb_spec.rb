require 'spec_helper'

describe "orders/index" do
  before(:each) do
    orders = [
      stub_model(Order,
            :name => "Name",
            :address => "MyText",
            :email => "Email",
            :pay_type => "Pay Type"
          ),
          stub_model(Order,
            :name => "Name",
            :address => "MyText",
            :email => "Email",
            :pay_type => "Pay Type"
          )]
    orders.stub!(:current_page).and_return(1)
    orders.stub!(:total_pages).and_return(2)
    assign(:orders, orders)
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Type".to_s, :count => 2
  end
end
