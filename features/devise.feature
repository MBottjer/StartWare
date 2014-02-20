Feature: Signing In
As someone who wants to post new products to StartWare
In order to do so
I need t obe able to sign in 

  
  Scenario: Signing in having signed up
    Given I am on the homepage and have signed up
    When I enter my details 
    Then I should be signed in

  Scenario: Signing up
    Given I am on the homepage
    When I enter my sign up details
    Then I should be signed in



