Feature: User able to create and manage custom conversions
  
  @wip
  Scenario: User able to create new conversions
    Given I land on Home screen
    Then I press on Menu icon
    Then I press on My conversions button
    Then I press on Create your first conversion button
    And I type "Power" as custom conversion name
    When I press on New unit button
    Then I type "Horse power" as unit name
    Then I type "HP" as unit symbol
    Then I type "1" as unit value
    Then I press submit checkmark on Custom conversion screen
    When I press on New unit button
    Then I type "Mule power" as unit name
    Then I type "MP" as unit symbol
    Then I type "0.5" as unit value
    Then I press submit checkmark on Custom conversion screen
    Then I verify "Power" added to My conversions list