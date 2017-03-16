@website
Feature: Validation of texts

  @inmetrics
  Scenario: Search for strings
    Given I am on the Inmetrics page
    When I access the about page
    Then I must see the text "mais de 15 anos de atuação"

  @orangehrm @happy
  Scenario: Happy Path - Add Disciplinary Case
    Given I am on the OrangeHRM page
    When I input username "peter.mac" and password "peter.mac"
    And I access the disciplinary section
    And I add a new disciplinary case for "kevin master" with case name "Inmetrics test Ricardo" and description "This is a test"
    Then I must see the saved disciplinary case name "Inmetrics test Ricardo"

  @orangehrm @unhappy
  Scenario: Unhappy Path - Wrong username
    Given I am on the OrangeHRM page
    When I input username "peteraaa.mac" and password "peter.mac"
    Then I must be redirected to "https://enterprise-demo.orangehrmlive.com/securityAuthentication/retryLogin"