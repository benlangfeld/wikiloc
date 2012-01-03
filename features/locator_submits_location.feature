Feature: locator submits location
  
  The locator submits a location. The application scrapes relevant data from Wikipedia.
  As a start, it will get the location's populations.
  
  Scenario Outline: submit data type for location
    Given the location is "<location>"
    When I ask for "<data_type>"
    Then the data should be "<data>"
    
    Scenarios: countries
    | location | data_type    | data                                    |
    
    | Israel   | link         | http://en.wikipedia.org/wiki/Israel     |
    | Israel   | capital      | Jerusalem                               |
    
    | Germany  | link         | http://en.wikipedia.org/wiki/Germany    |
    | Germany  | capital      | Berlin                                  |
    
    | France   | link         | http://en.wikipedia.org/wiki/France     |
    | France   | capital      | Paris                                   |
    
    | Spain    | link         | http://en.wikipedia.org/wiki/Spain      |
    | Spain    | capital      | Madrid                                  |
    
    | UK       | link         | http://en.wikipedia.org/wiki/UK         |
    | UK       | capital      | London                                  |

Scenario: Asking for the capital of Israel
    Given I am not yet using wikiloc
    When I start wikiloc
    Then I should see "Welcome to Wikiloc!"
    And I should see "Enter location:"
    When I type "Israel"
    And I press enter
    Then I should see "What do you want to know?"
    When I type "Capital"
    And I press enter
    Then I should see "Jerusalem"
