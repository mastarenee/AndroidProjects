Feature: Test Dark feature

  Scenario: As a valid user I change to light mode in my app
    When I press the menu item
    Given I see "Night Mode"
    Then I click on "Night Mode"
    When I press the menu item
    Given I see "Day Mode"
    Then I click on "Day Mode"
