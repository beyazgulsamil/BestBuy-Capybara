search_page = SearchPage.new
Then(/^I click show more brands$/) do
  search_page.click_show_more_brand
end

Then(/^I select to panel in "([^"]*)"$/) do |item|
  search_page.click_left_panel_item item
end

Then(/^I click to show results$/) do
  search_page.click_show_results
end

Then(/^I select rank to "([^"]*)" product$/) do |rank|
  search_page.click_product_rank rank
end

