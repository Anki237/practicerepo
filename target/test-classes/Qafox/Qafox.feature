#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: User Registration, Password Change, Logout and Login with reset password on TutorialsNinja
  

  
  Scenario: User Registration with with valid details
    Given User is on registration page
    When User registers with firstname, lastname, email, telephone, password, confirmspassword, radiobuttonclick, checkboxticked, continuebtnclicked
    Then Registration should be successful,asserted with current title page
    
   Scenario: Password Change
    Given User is on account page
    When User navigates to password change page
    And User changes password, confirms password
    Then Password change should be successful and message should be Asserted
    
	Scenario: Logout and Login with new password
    When User logs out
    And User logs in with email, password
    Then User should be logged in and title should be asserted
 