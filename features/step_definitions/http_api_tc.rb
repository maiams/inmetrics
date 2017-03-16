Given(/^I perform an API GET call to the service "([^"]*)"$/) do | service |
  @api = HTTParty.get("http://swapi.co/api/" + service + "/")
end

When(/^I get the results$/) do
  @api.each do | item |
    puts item["results"]
  end
end

Then(/^I must see the http status equals to (\d+)$/) do | status |
  expect(@api.code).to eq status
end

When(/^I save the result count$/) do
  @result = @api["count"]
end

And(/^I perform an API GET call to the service "([^"]*)" with a number higher than the result count$/) do |service|
  number = @result + 1
  @api = HTTParty.get("http://swapi.co/api/" + service + "/" + number)
end