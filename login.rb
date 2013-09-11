require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://tf1-admin.synctv.com/production/RGBFzjiN/admin-app/"

##sleep(10)
wait = Selenium::WebDriver::Wait.new(:timeout => 3)
##email_ele = driver.find_element(:id,"login-dialog-email")
wait.until {driver.find_element(:id,"login-dialog-email").displayed?}
#email_ele.send_keys("admin@synctv.com")

driver.find_element(:id,"login-dialog-email").send_keys("admin@synctv.com")
driver.find_element(:id, "login-dialog-password").send_keys("zklAu89q")
driver.find_element(:id, "login-dialog-login-button").click

#close browser
#driver.close
