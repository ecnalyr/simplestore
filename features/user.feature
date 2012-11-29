Feature: User

Background: a logged in user
    

Scenario: A user should see their email when they log in
    Given a logged in user
    When user visits the Product List page
    Then user should see "admin@adminsemail.com"