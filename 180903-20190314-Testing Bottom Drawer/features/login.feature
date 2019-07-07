Feature: Testing Login App feature

  Scenario: As an invalid user I can try to login
    When I see "LoginTestApp"
    Then I enter "Test Enter" in the username field
    Then I enter "12345" in the password field
    Then I click on the button "Sign In or Register"
    Then I wait for 4 seconds


  Scenario: As an valid user I can try to login
    When I see "LoginTestApp"
    Given I enter "rome@gmail.com" in the username field
    Then I enter "123456789" in the password field
    Then I click on the button "Sign In or Register"
    Then I wait for 4 seconds