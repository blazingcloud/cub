Given(/^I visit the (.*) page$/) do |page|
  visit(path_for(page))
end
When(/^I am not logged in$/) do
end
Then(/^I should see the '(.*)' button$/) do |button|
  page.has_content?(button).must_equal(true)
end