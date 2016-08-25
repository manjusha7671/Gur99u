When(/^I click add to cart of a specific item$/) do
  @browser.element(:css => '.button.btn-cart').click

end

Then(/^i should se that item is added to cart$/) do
  @quantity1=@browser.element(:xpath => ".//*[@id='header']/div/div[2]/div/div/a/span[3]").text
   @quantity1 == "1"
end


  When(/^I change quantity of item to (.*)$/) do |qchange|

    @browser.text_field(:class=>"input-text qty").set qchange

    @browser.element(:css => '.button.btn-update').click

  end

Then(/^I should see an error message (.*)$/) do |error|
      sleep(6)

  p @browser.text.include? error



end