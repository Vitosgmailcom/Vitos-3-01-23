@askapp
Feature: Ask_test_by_lemlem
    
  @askapp1
  Scenario: submit assignment by lemlem
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "lemlemkeb16@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Abel@1" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be disabled
    And I click on element with xpath "//h5[contains(text(),'My Assignment')]"
    And I click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then element with xpath "//h4[contains(text(),'lemQA2')]" should be disabled
    And I click on element with xpath "mat-radio-outer-circle"