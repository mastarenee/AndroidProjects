Feature: Testing Hello App feature

  Scenario: As a regular user I can open the Hello app
    When I see "Hello World"
    Then I click on the element "Click Here"
    Then I see "Hello World"
    Then I wait for 4 seconds

