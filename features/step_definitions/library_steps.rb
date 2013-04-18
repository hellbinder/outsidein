
After do |scenario|
  if scenario.status == :failed
    save_and_open_page
  end
end

Given(/^the following "(.*?)"$/) do |factory, table|
  table.hashes.each do |hash|
    FactoryGirl.create(factory, hash)
  end
end

Given(/^I go to new library page$/) do
  visit new_library_path
end

Given(/^I go to the add book to library page$/) do
  @library = FactoryGirl.create(:library)
  visit add_library_book_path(@library.id)
end

When(/^I press "(.*?)" button$/) do |arg1|
  click_button arg1
  if arg1 == "Create"
    @library = Library.first
  end
end

Then(/^I should be on the library book list$/) do
  visit library_path(@library)
end

When(/^I choose "(.*?)" from "(.*?)"$/) do |arg1, arg2|
  select arg1, from: arg2
end

