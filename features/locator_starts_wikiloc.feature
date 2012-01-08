Feature: locator starts wikiloc

  As a locator
  I want to start wikiloc
  In order to get information about a location
  
  Scenario: start wikiloc
    Given I am not yet using wikiloc
    When I run `wikiloc` interactively
    Then the output should contain "Welcome to Wikiloc!"
    And the output should contain "Enter location:"
    