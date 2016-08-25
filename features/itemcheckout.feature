Feature: Checkout one or more items on Magento Page

  Scenario: A valid user can checkout one or more items successfully

    Given Iam on Magento webpage
    When I click on "Account" and select "My Account" link on the page
    When I enter My "Email Id " And "Password" And click "login"button"
    Then I should able to login successfully to my account And title of the page must be"My Account"
    When I click on the Mobile
    Then It should take me to the "Mobile" section
    When I select any item and click on add to cart
    Then Those items should be added to cart
    When I click "Proceed to checkout"
    When I enter Mandatory fields "First name", "Last name","Address", "City", "State", "Zip","Country","Telephone"
    And Click on continue Button
    Then The Page Must show me "Flat Rate" Cost
    When I click continue Button
    Then Page Must show me two options 1."Money order" 2."Credit Card"
    When I select radio button of "Money Order"
    And click on the Continue Button
    Then I should see the page Contains all the information about my order i.e, Order Total,Shipping & Handling (Flat Rate - Fixed) ,Billing Address,  Shipping Address,Shipping Method, Payment Method
    When I click on "Place order"
    Then I should see message "Thank you for your purchase!" and order number "/(^Order)\s#\d{9}/"

