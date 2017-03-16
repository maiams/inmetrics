require '../pages/inmetrics'

Given(/^I am on the Inmetrics page$/) do
  @inmetrics = Home.new
  @inmetrics.load
end

When(/^I access the about page$/) do
  @inmetrics.about_link.click
end

Then(/^I must see the text "([^"]*)"$/) do |text|
  expect(@inmetrics.about_text).to include text
end