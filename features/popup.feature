Feature: Compare products
  Scenario: Compare features of two or more items
    Given Iam on Magento webpage
    When I click on the Mobile
    Then I Then It should take me to the mobile section
    When I click on "Add to Compare" for two or more items
    And click on the Compare on that page
    Then A Pop-Up window must open
    And it must show two or more items compared
