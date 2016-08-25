When(/^I click on "([^"]*)" and select "([^"]*)" link on the page$/) do |arg1, arg2|
  @browser.element(:xpath => ".//*[@id='header']/div/div[2]/div/a/span[2]").click
  @browser.element(:title=>"My Account").click
end

Then(/^The page title of the page must be "([^"]*)"$/) do |arg|
 p @browser.title ==  arg #1
  p arg
end

When(/^I click Create an account button$/) do
   @browser.element(:xpath => ".//*[@id='login-form']/div/div[1]/div[2]/a/span/span").click
end

Then(/^The title of the page must be "([^"]*)"$/) do |arg|
  p @browser.title == arg #2
  p arg
end

When(/^I Type my "([^"]*)", And I type my "([^"]*)", And I type my "([^"]*)", And I type my "([^"]*)", And I type my "([^"]*)", And Click on Register Button$/) do |arg1, arg2, arg3, arg4, arg5|
  @browser.text_field(:css => "#firstname").set ('aaa')
  @browser.text_field(:css => "#lastname").set ('aaa')
  @browser.text_field(:css => "#email_address").set ('aaewwedrtregfdhtgfederwa@gmail.com')
  @browser.text_field(:css => "#password").set ('aaaaaa')
  @browser.text_field(:css => "#confirmation").set ('aaaaaa')
  @browser.element(:xpath => ".//*[@id='form-validate']/div[2]/button").click


end

Then(/^It should Create an account and give a welcome message "([^"]*)"$/) do |arg|
  p @browser.text.include? 'Hello, aaa aaa!' #3
end

When(/^I Click on TV link$/) do
  @browser.element(:xpath => ".//*[@id='nav']/ol/li[2]/a").click
end

When(/^I add (\d+) or more items to "([^"]*)"$/) do |arg1, arg2|
  @browser.element(:xpath => ".//*[@id='top']/body/div/div/div[2]/div/div[2]/div[1]/div[2]/ul/li[1]/div/div[2]/ul/li[1]/a").click
end

And(/^click on "([^"]*)" Button$/) do |arg|
  @browser.element(:css => ".button.btn-share").click
end

Then(/^the title of the page must be "([^"]*)" and page must include text "([^"]*)"$/) do |arg1, arg2|
  p @browser.text.include? arg2 #4
  p arg2
  p arg1
  p @browser.title == arg1 #5
end

When(/^I enter valid email address on "([^"]*)" textbox$/) do |arg|
  @browser.textarea(:css => "#email_address").set 'hewgfukwe@gmail.com'
end

And(/^Enter Message on the message field And click on "([^"]*)" Button$/) do |arg|
  @browser.textarea(:css => "#message").set "some thing"
  @browser.element(:xpath => ".//*[@id='form-validate']/div[2]/button").click
end

Then(/^I should see "([^"]*)" and title of the page must be "([^"]*)"$/) do |arg1, arg2|
  p @browser.text.include? arg1 #6
  p @browser.title == arg2 #7
end


Then(/^The title of the page must be "([^"]*)" and it should include items relating to tv$/) do |arg|
  @browser.title == arg
end