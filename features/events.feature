Feature: List of events and conferences
  In order to takes notes
  As a user
  I want to see what conferences are available and select one

  Scenario: List of existing conferences
    Given the following events exist:
    | name              | start_date  | end_date    | location               |
    | WWDC 2013         | 2013-06-10  | 2013-06-14  | San Francisco, CA, USA |
    | Dutch Mobile 2013 | 2013-06-06  | 2013-06-08  | Amsterdam, Netherlands |
    When I visit the "home" page
    Then I should see "WWDC 2013"
    And  I should see "Dutch Mobile 2013"

  Scenario: New event page
    When I visit the "home" page
    And I click on "New Event"
    Then I should be on the "New Event" page

  Scenario: Creating an event
    Given There is no event named "Women 2.0"
    When I visit the "New Event" page
    And I fill out and save details for the "Women 2.0" event
    Then I should see "Event was successfully created."
    And I should see "Women 2.0"
    When I visit the "home" page
    Then I should see "Women 2.0"

  @wip
  Scenario: Create a duplicate event
    Given There is an event named Women2.0
    When I visit the home page
    And I press create
    When I enter Women2.0 in the name
    Then I should see a message 'There is already Women2.0 conference, would you like to see it?'

  @wip
  Scenario: Clicking on event name
    Given There is an event named Women2.0
    When I visit the home page
    Then I should see Women2.0 link
    When I click on a Women2.0 link
    Then I should see the event details page
    And I should see November 14-15, Bellagio Ballroom, Las Vegas
