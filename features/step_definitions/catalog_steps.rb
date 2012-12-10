When /^user visits the Catalog page$/ do
  visit('/')
end

When /^user should not see "(.*?)"$/ do |text|
  assert page.has_no_content?(text)
end

When /^user adds the first item to the cart$/ do
  within first('.entry') do
    click_button('Add to cart')
  end
end

When /^user fills and submits the form \(places the order\)$/ do
  fill_in('Name', :with => 'John')
  fill_in('Address', :with => 'Seekrit')
  fill_in('Email', :with => 'test@email.com')
  select('Check', :from => 'order_pay_type')
  click_button('Place Order')
end

Then /^user should receive an "(.*?)" email\.$/ do |email_type|
  sent_email = ActionMailer::Base.deliveries.last
  order = Order.last
  if email_type == "order_received"
    assert_equal "John", order.name
    assert_equal "Seekrit", order.address
    assert_equal "test@email.com", order.email
    assert_equal "Check", order.pay_type
    assert_equal "SimpleStore Order Confirmation", sent_email.subject
  else
    raise NotImplementedError
  end
end