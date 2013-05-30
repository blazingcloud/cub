Given(/^I visit the (.*) page$/) do |page|
  visit(path_for(page))
end
When(/^I am not logged in$/) do
end
Then(/^I should see the '(.*)' button$/) do |button|
  page.has_content?(button).must_equal(true)
end
Given(/^There is no user with email "([^"]*)"$/) do |email|
  User.where(:email => email).count.must_equal(0)
end
When(/^I sign up for an account with my LinkedIn profile \("([^"]*)"\)$/) do |email|
  pending
end