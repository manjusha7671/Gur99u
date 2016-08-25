Then(/^I Then It should take me to the mobile section$/) do
  @browser.element(:css => ".level0").click
end

When(/^I click on "([^"]*)" for two or more items$/) do |arg|

  sleep(1)
  @browser.element(:xpath => ".//*[@id='top']/body/div/div/div[2]/div/div[2]/div[1]/div[3]/ul/li[2]/div/div[3]/ul/li[2]/a").click
  sleep(1)
  @browser.element(:xpath => ".//*[@id='top']/body/div/div/div[2]/div/div[2]/div[1]/div[3]/ul/li[3]/div/div[2]/ul/li[2]/a").click
end

And(/^click on the Compare on that page$/) do
  @browser.element(:xpath => ".//*[@id='top']/body/div[1]/div/div[2]/div/div[3]/div[1]/div[2]/div/button").click
end

Then(/^A Pop\-Up window must open$/) do

  @b1=@browser.window(:title => 'Products Comparison List - Magento Commerce').use do


  end




  end


And(/^it must show two or more items compared$/) do
 p @b1.title == "Products Comparison List - Magento Commerce"



end