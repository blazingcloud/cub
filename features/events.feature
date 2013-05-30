Feature: List of events and conferences
  In order to takes notes
  As a user
  I want to see what conferences are available and select one

Scenario: List of existing conferences
  Given There are WWDC2013, Amsterdam conferences already registered
  When I visit the home page
  Then I should see the WWDC, Amsterdam button

Scenario: Creating an event
  Given There is no event named Women2.0
  When I visit the home page
  Then I should see a create button
  When I press create
  Then I see form to fill int
  When I enter Women2.0 in the name and press Save
  Then I see Women2.0 in the event list

Scenario: Create a duplicate event
  Given There is an event named Women2.0
  When I visit the home page
  And I press create
  When I enter Women2.0 in the name
  Then I should see a message 'There is already Women2.0 conference, would you like to see it?'

Scenario: Clicking on event name
  Given There is an event named Women2.0
  When I visit the home page
  Then I should see Women2.0 link
  When I click on a Women2.0 link
  Then I should see the event details page
  And I should see November 14-15, Bellagio Ballroom, Las Vegas
