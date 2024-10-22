Feature: Verify end to end scenarios of the application

  Scenario: Verify user can place order
    Given user open website

    Then verify user on login page
    When user login username "standard_user" and password "secret_sauce"
    Then verify user on home page
    When user click on add to cart button of the first item
    Then verify cart icon displays quantity one
    When user click on cart icon
    Then verify user is on cart page
    When user click on checkout button
    Then verify user is on checkout page
    When user fill all checkout details
    And click on Continue button
    Then verify user is on review page
    When user click on Finish button
    Then verify user is on order confirmation page




  Scenario Outline: Verify user cannot login with invalid credentials
    Given user open website
    Then verify user on login page
    When user login username "<username>" and password "<password>"


    Examples:
      | username  | password |
      | standard  | duif     |
      | akldfma   | aidf     |
