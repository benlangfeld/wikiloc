Feature: locator starts wikiloc

  As a locator
  I want to start wikiloc
  In order to get information about a location
  
  Scenario: start wikiloc
    Given I am not yet using wikiloc
    When I start wikiloc
    Then I should see "Welcome to Wikiloc!"
    And I should see "Enter location:"