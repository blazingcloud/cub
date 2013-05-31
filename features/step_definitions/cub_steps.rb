def assert_logged_in
  visit "/"
  page.has_content?("Log out").must_equal(true)
  current_path.must_equal("/")
end

def assert_not_logged_in
  visit "/"
  page.has_content?("connect").must_equal(true)
  current_path.must_equal("/")
end

Given(/^I visit the (.*) page$/) do |page|
  visit(path_for(page))
end

When(/^I am not logged in$/) do
  assert_not_logged_in
end

Then(/^I should see the '(.*)' button$/) do |button|
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