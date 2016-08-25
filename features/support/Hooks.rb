require 'watir-webdriver'
require 'logger'
logger=Logger.new("c:\\log.log")
logger.debug("Created logger")


Before do|scenario|
  @browser = Watir::Browser.new :firefox
  logger.info("Scenario Execution starting: #{scenario.name}")
end


After do|scenario|
  @browser.close
  logger.info("Scenario Execution starting: #{scenario.name}")
end