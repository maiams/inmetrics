require '../pages/orangehrm'


Given(/^I am on the OrangeHRM page$/) do
  @orange = Home.new
  @orange.load
end

When(/^I input username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @orange.username_field.set username
  @orange.password_field.set password
  @orange.login_button.click
end

And(/^I access the disciplinary section$/) do
  @orange_disciplinary = Disciplines.new
  @orange_disciplinary.disciplinary_link.click
  @orange_disciplinary.add_button.click
end

And(/^I add a new disciplinary case for "([^"]*)" with case name "([^"]*)" and description "([^"]*)"$/) do |empl, name, text|
  @orange_add_disciplinary_case = AddDisciplinaryCase.new
  # set name
  @orange_add_disciplinary_case.employee_name_field.set empl
  @orange_add_disciplinary_case.employee_name_li_selector.click

  @orange_add_disciplinary_case.case_name_field.set name
  @orange_add_disciplinary_case.case_description_textarea.set text

  @orange_add_disciplinary_case.save_button.click

end

Then(/^I must see the saved disciplinary case name "([^"]*)"$/) do |name|
  @orange_disciplinary_case = ViewDisciplinaryCase.new
  expect(@orange_disciplinary_case.disciplinary_cases_name).to include name
end

Then(/^I must be redirected to "([^"]*)"$/) do |url|
  expect(@orange.url_matches).to eq url
end
