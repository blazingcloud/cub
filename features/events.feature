Feature: List of events and conferences
  In order to takes notes
  As a user
  I want to see what conferences are available and select one

  Scenario: List of existing conferences
    Given the following events exist:
    | name              | start date  | end date    | location               |
    | WWDC 2013         | 2013-06-10  | 2013-06-14  | San Francisco, CA, USA |
    | Dutch Mobile 2013 | 2013-06-06  | 2013-06-08  | Amsterdam, Netherlands |
    When I visit the home page
    Then I should see "WWDC 2013"
    And  I should see "Dutch Mobile 2013"

  @wip
  Scenario: Creating an event
    Given There is no event named Women2.0
    When I visit the home page
    Then I should see a create button
    When I press create
    Then I see form to fill int
    When I enter Women2.0 in the name and press Save
    Then I see Women2.0 in the event list

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
