Feature: Login
  In order to use application
  As a user
  I want to sign in with my LinkedIn credentials

Scenario: Anonymous user visits site
  Given I am not logged in
  When I visit the home page
  Then I should see the 'connect' button

Scenario: Creating an account
  Given I am not an existing user
  When I visit the home page
  And I sign up for an account with my LinkedIn profile
  Then I should see the events page
  And I should see my name

Scenario: Logging in
  Given I am a user of the site
  When I login
  Then I should see the events page
  And I should see my name

Scenario: Logging out
  Given I am logged in
  When I logout
  Then I should see the 'connect' button