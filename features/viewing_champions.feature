Feature: Viewing Champions

  Background:
    Given I am on the champions page

  Scenario: User is looking at all champions
    Then I should see all the champion icons

  Scenario: User selects a champion
    When I click on a champion icon
    Then I should be on the champion info page