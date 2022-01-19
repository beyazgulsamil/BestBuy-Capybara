login_page = LoginPage.new

Then(/^I fill e\-mail address "([^"]*)"$/) do |mail|
  login_page.fill_e_mail(mail)
end

Then(/^I fill password "([^"]*)"$/) do |pass|
  login_page.fill_password(pass)
end

Then(/^I click Sign In$/) do
  login_page.click_login
end

Then(/^I click Sign in with Google$/) do
  sleep 3
  login_page.click_google_sign
end

And(/^switch window to (first|last) opened$/) do |condition|
  if condition == 'first'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  elsif condition == 'last'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
end

And(/^New tab$/) do
  open_new_window
end

