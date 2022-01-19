google_page = GooglePage.new

Then(/^I fill gmail "([^"]*)"$/) do |user|
  google_page.google_fill_sign(user)
  sleep 3

end

Then(/^I click forward id button$/) do
  google_page.click_next_sign
end

Then(/^Fill password gmail "([^"]*)"$/) do |pass|
  google_page.google_fill_password (pass)
end

Then(/^I click forward pass button$/) do
  google_page.click_next_pass
end