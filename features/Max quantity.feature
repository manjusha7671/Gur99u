@regression
Feature: Maximum number of quantity per item

  Scenario Outline: A user cannot buy more than "maximim" per item
    Given Iam on Magento webpage
    When I click on the Mobile
    Then It should take me to the "<arg>" section
    When I click add to cart of a specific item
    Then i should se that item is added to cart
    When I change quantity of item to <qchange>
    Then I should see an error message <error>
    Examples:
      | arg    |qchange|error|
      | Mobile |501|The maximum quantity allowed for purchase is 500|
      | Mobile  |0|You have no items in your shopping cart.|
