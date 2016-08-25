
Given(/^Iam on Magento webpage$/) do
  @browser.goto("http://live.guru99.com/index.php/")

  @browser.title.should =="Home page"
end

When(/^I click on "([^"]*)" on the left side of the page$/) do |arg|
 @browser.a(:class=>"level0 ").click
end

Then(/^I should see the items related to the mobile page "([^"]*)"$/) do |arg|
  @browser.text.include? arg


end

When(/^I click on sort and select sort by "([^"]*)"$/) do |arg|
  @browser.select_list(:title=>"Sort By").select("Name")
  puts"alphabetical"

end

Then(/^I should see the names of items sorted alphabetically$/) do

  p @browser.element(:xpath, '//ul/li/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[2]/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[3]/div/h2/a').text
end


When(/^I click on sort and select sort by "([^"]*)"next$/) do |arg|
  @browser.select_list(:title=>"Sort By").select("Position")
  puts"by position"
end

Then(/^I should see the names of items sorted position of the mobile$/) do

  p @browser.element(:xpath, '//ul/li/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[2]/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[3]/div/h2/a').text
end

When(/^I click on sort and select sort by "([^"]*)" then after$/) do |arg|
  @browser.select_list(:title=>"Sort By").select("Price")
  puts"sorted by price"
end

Then(/^I should see the names of items sorted by price$/) do

  p @browser.element(:xpath, '//ul/li/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[2]/div/h2/a').text
  p @browser.element(:xpath, '//ul/li[3]/div/h2/a').text
end


