Feature: Logging in

  Background:
    Given I am on the log in page

  Scenario: User tries to log in with only email
    When I only fill in the email field
    Then I should not be able to log in

  Scenario: User tries to log in with only password
    When I only fill in the password field
    Then I should not be able to log in

  Scenario: User types in correct email and password
    When I log in as 'what@what.what'
    Then I should be signed in