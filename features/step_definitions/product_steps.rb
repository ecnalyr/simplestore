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

When /^user visits the edit page for "(.*?)"$/ do |name|
  product = Product.find_by_name(name)
  visit("/products/#{product.id}/edit")
end

When /^user fills in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^user presses "(.*?)"$/ do |button|
  click_button(button)
end

Then /^the full description of "(.*?)" should be "(.*?)"$/ do |name, full_description|
  product = Product.find_by_name(name)
  assert full_description == product.full_description
end

When /^user attaches the file "(.*?)" to "(.*?)"$/ do |path, field|
  attach_file(field, path)
end

Then /^user should see an image with an alt-text of "(.*?)"$/ do |arg1|
  page.should have_selector("img[alt$='#{arg1}']")
end


