Given(/^I go to new book page$/) do
  visit new_book_path
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I Press "(.*?)"$/) do |arg1|
  click_button "Create"
end

Then(/^I should be on the book list page$/) do
  page.should have_content('List books!')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end