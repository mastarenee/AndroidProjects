Feature: DatePicker Testing feature

  Scenario: As a valid user I select a date and see it
    Given I select the date
    Then I wait for 5 seconds
    Then I enter a date "01-01-2019"


  Scenario: As a valid user I select a date in the future
    Given I select the date
    Then I wait for 5 seconds
    Then I enter a date "05-01-2020"