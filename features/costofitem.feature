@regression
Feature: Cost of Item

  Scenario: Verify cost of item on Details page nad list page are same
    Given Iam on Magento webpage
    When I click on the Mobile
    Then It should take me to the "Mobile" section
    When I check price of an item in the list page it should be "price1"
    And I check price of the same item on the details page
    Then The price of the specific item must be "price1"same on both pages





