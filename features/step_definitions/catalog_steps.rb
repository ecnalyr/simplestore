When /^user visits the Catalog page$/ do
  visit('/')
end

When /^user should not see "(.*?)"$/ do |text|
  assert page.has_no_content?(text)
end