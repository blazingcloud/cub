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

    @wip
  Scenario: Creating an event
    Given There is no event named "Women 2.0"
    When I visit the "New Event" page
    And I fill out and save details for the "Women 2.0" event
    Then I should see "Event was successfully created."
    And I should see "Women 2.0"
    When I visit the "home" page
    Then I should see "Women 2.0"

      @wip
  Scenario: Clicking on event name
    Given There is an event named "Women 2.0"
    When I visit the "home" page
    And I click on "Women 2.0"
    Then I should see "Women 2.0"

