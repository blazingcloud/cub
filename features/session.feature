Feature: Session
  As a conference participant
  I want to be able to create shared notes
  In order to better collaborate with other attendies

Scenario: Create Session
  Given There is an event named "WWDC 2013"
  When I visit the "WWDC 2013" Event page
  And I enter "Keynote" in the "Create New Session" field
  Then I should see the "Keynote" link

Scenario: Editing Session details
  Given There is a session named "WWDC 2013 Keynote"
  When I visit the "WWDC 2013 Keynote" Session page
  And I fill out and save details for the "WWDC 2013 Keynote" session
  Then details for "WWDC 2013 Keynote" should be saved
