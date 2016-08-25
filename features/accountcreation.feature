Feature: Creating a New Account
  Scenario: Verify creating a new account and can share wishlist to the people
    Given Iam on Magento webpage
    When I click on "Account" and select "My Account" link on the page
    Then The page title of the page must be "Customer Login"
    When I click Create an account button
    Then The title of the page must be "Create New Customer Account"
    When I Type my "First Name", And I type my "Last Name", And I type my "Email Address", And I type my "Password", And I type my "Confirm Password", And Click on Register Button
    Then It should Create an account and give a welcome message "Thank you for registering with Main Website Store."
    And The title of the page must be "My Account"
    When I Click on TV link
    Then The title of the page must be "TV" and it should include items relating to tv
    When I add 1 or more items to "wishlist"
    And click on "Share Wishlist" Button
    Then the title of the page must be "Wishlist Sharing" and page must include text "Share Your Wishlist"
    When I enter valid email address on "Email addresses, separated by commas" textbox
    And Enter Message on the message field And click on "share Wishlist" Button
    Then I should see "Your Wishlist has been shared." and title of the page must be "My Wishlist"