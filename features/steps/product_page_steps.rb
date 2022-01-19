product_page = ProductPage.new
And(/^I click Save button$/) do
  product_page.click_save_button
end

Then(/^I click Saved Items button$/) do
  product_page.click_save_list_button
end

Then(/^Verify saved list$/) do
  product_page.verify_list
end