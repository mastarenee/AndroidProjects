Feature: Testing First App "The BottomDrawer" feature

  Scenario: As a regular user I can open the bottom drawer app
    When I see "Dashboard"
    Then I click on the element "Dashboard"
    Then I wait for 4 seconds
    Then I click on the element "Discover"
    Then I wait for 4 seconds
    Then I click on the element "Notifications"
    Then I wait for 4 seconds

