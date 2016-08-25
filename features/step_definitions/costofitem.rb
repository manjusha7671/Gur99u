When(/^I click on the Mobile$/) do
  @browser.element(:css => '.level0').click
end

Then(/^It should take me to the "([^"]*)" section$/) do |arg|
  @browser.title == "Mobile"
end

When(/^I check price of an item in the list page it should be "([^"]*)"$/) do |arg|
  @value1=@browser.element(:xpath => ".//*[@id='product-price-2']/span").text




end

And(/^I check price of the same item on the details page$/) do
  @browser.element(:css => "#product-collection-image-2").click
  @value2=@browser.element(:xpath => ".//*[@id='product-price-2']/span").text
end

Then(/^The price of the specific item must be "([^"]*)"same on both pages$/) do |arg|
  p @value1.should  == @value2
end