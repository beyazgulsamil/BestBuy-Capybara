Feature: Practice

  Background:BG
    Given Go to "bestbuy.com"
    When Click United States
    And Close pop-up

  Scenario: task1
    Then Verify title "Best Buy | Official Online Store | Shop Now & Save"
    Then I search to "Drone"

  Scenario: task2
    Given I click Account button
    When I click Sign In button in Top Menu
    Then I fill e-mail address "beyazgulsamil@gmail.com"
    Then I fill password "beyazgul741"
    Then I click Sign In
    And refresh the page
    Then Verify to successful sign text


  Scenario: task3
    Given I click Account button
    When I click Sign In button in Top Menu
    Then I click Sign in with Google
    And switch window to last opened
    Then I fill gmail "hyeni4444"
    Then I click forward id button
    Then Fill password gmail "yenihesap"
    Then I click forward pass button
    And switch window to first opened
    And New tab
    And switch window to last opened
    Then Go to "bestbuy.com"
    Then Verify to successful sign text

  Scenario: task4
    Given Click menu button
    And I select in menu product type "Audio"
    And I select in menu product type "Headphones"
    And I select in inside menu Wireless headphone
    When I click show more brands
    And I select to panel in "Philips"
    Then I click to show results
    And refresh the page
    Then I select rank to "2" product
    And I click Save button
    Then I click Saved Items button
    Then Verify saved list
    * sleep "4"










