@ST_10506 @Pages
Feature: Pages routing

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"

@SC_44213 @ignore @REL-745
Scenario: Check Sign In/Out link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@SC_44214 @ignore @REL-744
Scenario: Check settings link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@SC_44215 @REL-747
Scenario: Check link on Dashboard page
Then I can see path matches RegEx "[default]dashboard" in browser route

@SC_44216 @REL-748
Scenario: Check link on Edit Features page
And I select project "default"
And I am in page "Editor"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/editor" in browser route

@SC_44217 @REL-749
Scenario: Check link on Project Settings page
And I select project "default"
And I am in page "Project Settings"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/settings" in browser route

@SC_44218 @REL-750
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Statistics Page"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/activity" in browser route

@SC_44219 @REL-751
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Feature Management"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/management" in browser route

@SC_44220 @REL-813
Scenario: Check dashboard page is displayed when redirected to non existing page
And I select project "WRONG"
Then I can see path matches RegEx "[default]dashboard" in browser route