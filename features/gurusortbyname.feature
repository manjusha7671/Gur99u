Feature: Sorting of items
  @regression
  Scenario: Check the list of items can be sorted by name
    Given Iam on Magento webpage
    When I click on "mobile" on the left side of the page
    Then I should see the items related to the mobile page "This is root of mobile"
    When I click on sort and select sort by "name"
    Then I should see the names of items sorted alphabetically

  Scenario: Check the list of items can be sorted by position
    Given Iam on Magento webpage
    When I click on "mobile" on the left side of the page
    Then I should see the items related to the mobile page "This is root of mobile"
    When I click on sort and select sort by "position"next
    Then I should see the names of items sorted position of the mobile

  Scenario: Check the list of items can be sorted by name
    Given Iam on Magento webpage
    When I click on "mobile" on the left side of the page
    Then I should see the items related to the mobile page "This is root of mobile"
    When I click on sort and select sort by "price" then after
    Then I should see the names of items sorted by price





