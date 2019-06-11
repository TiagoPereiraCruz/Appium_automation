@home_screen
Feature: Tests for Home screen functionality

  @default @wip
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on Home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then show All button should be enabled
    When I press on clear button
    Then show All button should be disabled
    Then show All button should be undefined

  @conversion
  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type <target> to target text field
    Then I should see result as <result>
  Examples:
    | target | result |
    | "1"    | "12"   |
    | "2"    | "24"   | 
    | "3"    | "36"   | 
    | "9"    | "106"  | 