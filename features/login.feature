Feature: Login
  In order to use application
  As a user
  I want to sign in with my LinkedIn credentials

Scenario: Anonymous user visits site
  Given I am not logged in
  When I visit the home page
  Then I should see the 'connect' button

Scenario: Creating an account
  Given There is no user with email "tyra@blazingcloud.net"
  When I visit the home page
  And I sign up for an account with my LinkedIn profile ("tyra@blazingcloud.net")
  Then I should be logged in

Scenario: First time logging in
  Given I am a user of LinkedIn
  When I login
  Then I should be redirected to LinkedIn to login


Scenario: Subsequent log in
  Given I am a user of LinkedIn
  When I login
  Then I should be redirected to LinkedIn to login
  When I authorize with LinkedIn
  Then I should see the events page
  And I should see my name

Scenario: Logging out
  Given I am logged in
  When I logout
  Then I should see the 'connect' button