@home_screen
Feature: Tests for Home screen functionality

  @default 
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on Home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then show All button should be enabled
    When I type "1" on application keyboard
    Then show All button should be enabled

  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type <target> on application keyboard
    Then I should see result as <result>
  Examples:
    | target | result    |
    | "1"    | "30.48"   |
    | "10"   | "304.8"   | 
    | "120"  | "3 657.6" | 
    | "9"    | "274.32"  | 

  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
    Then I press on Add to Favorites icon
    When I press on Menu icon
    Then I press on Favorite conversions
    And I verify "Length" added to Favorite conversions list

  Scenario: User able to search by existing Conversion type
    Given I land on Home screen
    Then I press on search icon
    Then I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Celsius" as a current unit converter
    Then Left unit picker value should be "Celsius"
    And Right unit picker should be "Fahrenheit"

  @wip
  Scenario Outline: User able to select values from unit pickers
    Given I land on Home screen
    Then I select <unit_type> from left unit picker
    When I type <amount> on application keyboard
    Then I should see result as <result>
  Examples:
    | unit_type | amount | result    |
    | "Inch"    | "1"    | "2.54"    |
    | "Link"    | "1"    | "20.1168" |