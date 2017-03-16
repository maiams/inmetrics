@http_api
Feature: Validation of api rest

  @statuscode
  Scenario: Get statuscode of API request
    Given I perform an API GET call to the service "films"
    When I get the results
    Then I must see the http status equals to 200

  @planets
  Scenario: Get planet count
    Given I perform an API GET call to the service "planets"
    When I save the result count
    And I perform an API GET call to the service "planets" with a number higher than the result count
    Then I must see the http status equals to 404