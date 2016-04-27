Given /^I open Google$/ do
  visit('/ncr')  # no country redirect
end

Given /^I query on "([^"]*)"$/ do |text|
  fill_in "q", :with => text
  click_button('Search')
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content text
end