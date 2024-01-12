Feature: Scruff Match
    As a user I want to create a profile


    @create_account
    Scenario: Create account  
    Given I'm a new user on scruff home page
    And I go through create a profile flow
    When I click on submit
    Then the success message is displayed
    
