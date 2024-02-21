@Login_EBay
Feature: Verifying the Login functionality of the E-Bay ecommerce site

  Background: User is on the ebay ecommerce site

  @Login_with_validcred
  Scenario: Login functionality using valid credentials
    Given User should fetch the cred from GCP
    And User should peform login using "username" and "password"
    Then User should verify the login success message "xxxx" from home screen

  @Login_with_invalidcred
  Scenario Outline: Login functionality using invalid credentials
    Given User should peform login using |username| and |password|
    Then User should verify the invalid login error message "xxxx"

    Examples: 
      | username       | password |
      | xxxx@gmail.com | xyz123   |

  @Login_with_emptycred
  Scenario: Login functionality using empty credentials
    Given User should peform login without entering the credentials
    Then User should verify the invalid login error message "xxxx"
