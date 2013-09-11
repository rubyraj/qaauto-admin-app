require 'selenium-webdriver'
$driver = Selenium::WebDriver.for :chrome
$sync_wait = Selenium::WebDriver::Wait.new(:timeout => 3)
