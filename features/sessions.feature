Feature: List of session in a conference
  In order to takes notes
  As a user
  I want to see what sessions are available and create one

  Scenario: List of existing sessions
    Given The following sessions exist for the "WWDC 2013" event:
    | name                 | start_time  | location  |
    | iOS 7 UIKit          | 2013-06-10 14:30 |room 201   |
    | OS X Core Animation  | 2013-06-12 10:15 |room 402   |
    When I visit the "WWDC 2013" Event page
    And  I should see "iOS 7 UIKit"
