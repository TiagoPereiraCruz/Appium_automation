
@gestures
Feature: User able to use gestures

  Scenario: User able to swipe to open left side menu
    Given I land on Home screen
    When I swipe from far left to right
    Then I should see left side menu
    When I swipe from right to left
    Then I see "Length" as a header name

  Scenario: User able to swipe to open Calculator
    Given I land on Home screen
    When I swipe from far right to left
    Then I see "Calculator" as a header name
    When I swipe from left to right
    Then I see "Length" as a header name

