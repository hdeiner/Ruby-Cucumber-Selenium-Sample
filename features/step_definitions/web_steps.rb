Given /^I open Google$/ do
  visit('/ncr')  # no country redirect
end

When /^I query on "([^"]*)"$/ do |text|
  fill_in "q", :with => text
  click_button('Google Search')
end

Then /^I should see "([^"]*)" on the page returned/ do |text|
  expect(page).to have_content text
end