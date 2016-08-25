When(/^I enter My "([^"]*)" And "([^"]*)" And click "([^"]*)"button"$/) do |arg1, arg2, arg3|
  @browser.text_field(:css => "#email").set("aaewweddwa@gmail.com")
  @browser.text_field(:css => "#pass").set('aaaaaa')
  @browser.element(:css => "#send2").click
end

Then(/^I should able to login successfully to my account And title of the page must be"([^"]*)"$/) do |arg|
  p @browser.title == arg
end

When(/^I select any item and click on add to cart$/) do
  sleep(3)
  @browser.element(:css => ".button.btn-cart").click
end

Then(/^Those items should be added to cart$/) do
 p @browser.text.include? 'was added to your shopping cart.'
end

When(/^I click "([^"]*)"$/) do |arg|
  @browser.element(:xpath => ".//*[@id='top']/body/div[1]/div/div[2]/div/div/div/div[1]/ul/li/button").click

end

When(/^I enter Mandatory fields "([^"]*)", "([^"]*)","([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)","([^"]*)","([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8|
  p "aaa aaa errt"
  p @browser.text.include? 'aaa aaa, errt, retre, American Samoa 43555, United States'

  # if @browser.text.include? 'New Address'

    #@browser.text_field(:css => "#billing:firstname").set('aaa')
    #@browser.text_field(:css => "#billing:lastname").set('aaa')
    #@browser.text_field(:css => "#billing:street1").set('addre')
    #@browser.text_field(:css => "#billing:region_id").select 'Alaska'
    #@browser.text_field(:css => "#billing:postcode").set('54545')
    #@browser.select_list(:css => "#billing:country_id").select 'US'
    #@browser.text_field(:css => "#billing:telephone").set('6532763')
    #@browser.element(:xpath => ".//*[@id='billing-buttons-container']/button").click
  #else @browser.text.include? 'aaa aaa, errt, retre, American Samoa 43555, United States'
  #@browser.element(:xpath => ".//*[@id='billing-buttons-container']/button").click
  #end


end


And(/^Click on continue Button$/) do
  @browser.element(:xpath => ".//*[@id='billing-buttons-container']/button").click
end

Then(/^The Page Must show me "([^"]*)" Cost$/) do |arg|
   assert(@browser.text =~ /Flat Rate/)
end

When(/^I click continue Button$/) do
  sleep(1)
  @browser.element(:xpath => ".//*[@id='shipping-method-buttons-container']/button").click
end


Then(/^Page Must show me two options (\d+)\."([^"]*)" (\d+)\."([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  sleep(1)

end

When(/^I select radio button of "([^"]*)"$/) do |arg|
  sleep(2)
  @browser.radio(:css => "#p_method_checkmo").set


end
And(/^click on the Continue Button$/) do
  @browser.element(:xpath => ".//*[@id='payment-buttons-container']/button").click
end

Then(/^I should see the page Contains all the information about my order i\.e, Order Total,Shipping & Handling \(Flat Rate \- Fixed\) ,Billing Address,  Shipping Address,Shipping Method, Payment Method$/) do
  sleep(1)
end


When(/^I click on "([^"]*)"$/) do |arg|
      sleep(2)
      @browser.element(:xpath => ".//*[@id='review-buttons-container']/button").click
  sleep(4)
end

Then(/^I should see message "([^"]*)" and order number "\/\(\^Order\)\\s\#\\d\{9\}\/"$/) do |arg|
  p @browser.text
   p assert(@browser.text =~ /THANK YOU FOR YOUR PURCHASE!/)
   p assert(@browser.text =~ /Your\sorder\s#\sis:\s\d{9}/)

end


