Given(/^I visit the "(.*)" page$/) do |page|
  visit(path_for(page))
end

When(/^I am not logged in$/) do
  assert_not_logged_in
end

Then(/^I should see the "([^"]*)" button$/) do |button|
  page.has_content?(button).must_equal(true)
end
Given(/^There is no user with email "([^"]*)"$/) do |email|
  User.where(:email => email).count.must_equal(0)
end
When(/^I sign up for an account with my LinkedIn profile \("([^"]*)"\)$/) do |email|
  click_link "connect"
end

When(/^I logout$/) do
  visit "/logout"
  assert_not_logged_in
end

Then(/^I should be logged in$/) do
  assert_logged_in
end
Given(/^the following events exist:$/) do |events_table|
  # table is a | WWDC 2013         | 2013-06-10  | 2013-06-14  | San Francisco, CA, USA |
  events_table.hashes.each do |event_hash|
    FactoryGirl.create(:event, event_hash)
  end
end
Then(/^I should see "([^"]*)"$/) do |text|
  page.has_content?(text).must_equal(true)
end
Given(/^There is no event named "([^"]*)"$/) do |event_name|
  Event.where(:name => event_name).count.must_equal(0)
end
Then(/^I should see the "([^"]*)" link$/) do |link|
  page.has_link?(link).must_equal(true)
end
When(/^I click on "([^"]*)"$/) do |element|
  click_on(element)
end
Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  page_should_be(page_name)
end
When(/^I fill out and save details for the "([^"]*)" event$/) do |event_name|
  fill_out_event(event_name)
  click_on("Create Event")
end