Given /the following products exist/ do |products_table|
  products_table.hashes.each do |product|
    Product.create(product)
  end
end

When /^user visits the Product List page$/ do
  visit('/products')
end

Then /^user should see "(.*?)"$/ do |text|
  assert page.has_content?(text)
end