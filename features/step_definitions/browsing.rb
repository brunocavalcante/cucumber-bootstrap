When(/^I go to "([^"]*)"$/) do |page|
  visit page
end

Then(/^I see "([^"]*)"$/) do |selector|
  page.should have_selector(selector)
end

When(/^I click on the menu "([^"]*)"$/) do |item|
  find(item).hover
end

When(/^I click on the selector "([^"]*)"$/) do |link|   
  find(link).click 
end

When(/^I click on the name "([^"]*)"$/) do |btn_generic|
  click_on btn_generic
end