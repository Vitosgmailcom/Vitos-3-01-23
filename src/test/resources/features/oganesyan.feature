@Registration
Feature: Registration test

  @TestRegistration
  Scenario: Successful registration
    Given IrinaD open "REG_URL"
    Then IrinaD type "Iriska" in the field "FirstName"
    Then IrinaD type "Iriska" in the field "LastName"
    Then IrinaD type "iriskatest@gmail.com" in the field "Email"
    Then IrinaD type "ASK131" in the field "GroupCode"
    Then IrinaD type "12345Abc" in the field "Password"
    Then IrinaD type "12345Abc" in the field "ConfirmPassword"
    Then IrinaD click on the "RegisterMe"
    Then I wait for element with xpath "//*[contains(text(), 'You have been Registered.')]" to be present
    And element with xpath "//*[contains(text(), 'You have been Registered.')]" should be displayed