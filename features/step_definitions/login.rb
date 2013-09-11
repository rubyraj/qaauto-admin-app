Given /^I can launch admin app$/ do
  $driver.navigate.to "http://tf1-admin.synctv.com/production/RGBFzjiN/admin-app/"
  $sync_wait.until {$driver.find_element(:id,"login-dialog-email").displayed?}
end

When /^I enter (.*) credentials$/ do |user|
  $driver.find_element(:id,"login-dialog-email").send_keys(USERS[user.upcase])
  $driver.find_element(:id, "login-dialog-password").send_keys("zklAu89q")
end

And /^I click login button$/ do
  #$driver.find_element(:id, "login-dialog-login-button").click
  puts $driver.execute_script("return ViewControllers.login.login_dialog.loginAction()")
end

Then /^I see login is successful$/ do
  #wait till you get tf1 logo, then login is successful
  passed = $sync_wait.until{$driver.find_element(:id,"medias-root-container")}
  raise "failed to login" unless passed
end

#$driver.find_element(:id,"login-dialog-email").send_keys(USERS[user.upcase]["email"])
#$driver.find_element(:id, "login-dialog-password").send_keys(USERS[user.upcase]["password"])

#<div class="flash-error">Unknown email address provided</div>