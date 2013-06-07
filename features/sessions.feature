Feature: List of session in a conference
  In order to takes notes
  As a user
  I want to see what sessions are available and create one

  @javascript
  Scenario: List of existing sessions
    Given The following sessions exist for the "WWDC 2013" event:
    | name                 | start_time  | location  |
    | iOS 7 UIKit          | 2013-06-10 14:30 |room 201   |
    | OS X Core Animation  | 2013-06-12 10:15 |room 402   |
    When I visit the "WWDC 2013" Event page
    And  I should see "iOS 7 UIKit"

  @javascript
  Scenario: List of only sessions for the event
    Given The following sessions exist for the "Ada camp" event:
    | name                         | start_time       | location  |
    | Programming in middle school | 2013-06-08 10:00 |camp one   |
    | Learning by making games     | 2013-06-09 11:00 |camp two   |
    Given The following sessions exist for the "WWDC 2013" event:
    | name                 | start_time  | location  |
    | iOS 7 UIKit          | 2013-06-10 14:30 |room 201   |
    | OS X Core Animation  | 2013-06-12 10:15 |room 402   |
    When I visit the "WWDC 2013" Event page
    Then I should see "iOS 7 UIKit"
    And  I should not see "Learning by making games"
