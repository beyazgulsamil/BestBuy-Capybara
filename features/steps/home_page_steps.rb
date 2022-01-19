home_page = HomePage.new
Given(/^Go to web site$/) do
  visit "https://www.bestbuy.com/"
end

Given(/^Go to "([^"]*)"$/) do |link|
  visit "https://www."+link
end

And(/^Close pop\-up$/) do
  home_page.close_pop_up
end

Given(/^Verify title "([^"]*)"$/) do |txt|
  page.should have_title(txt)
  p txt+" title have to page"
end

When(/^assert page title$/) do
  expect(page).to have_title("Best Buy | Official Online Store | Shop Now & Save")
  page.should have_title("Best Buy | Official Online Store | Shop Now & Save")
  title.should include("| Official Online Store |")
  p "have title"
end

Then(/^I search to "([^"]*)"$/) do |product|
  home_page.search(product)
end

Given(/^I click Account button$/) do
  home_page.account_click
end

When(/^I click Sign In button in Top Menu$/) do
  home_page.sign_in_click
end

And(/^refresh the page$/) do
  page.evaluate_script('window.location.reload()')
  sleep 1
end

And(/^sleep "([^"]*)"$/) do |time|
  sleep time.to_i
end

Then(/^Verify to successful sign text$/) do
  home_page.verify_sign_text
end

Then(/^Click menu button$/) do
  home_page.click_menu_button
end

Then(/^I select in menu product type "([^"]*)"$/) do |item|
  home_page.click_menu_item item
end

Then(/^I select in inside menu Wireless headphone$/) do
  home_page.click_airpods
end
