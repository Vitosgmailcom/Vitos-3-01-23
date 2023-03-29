@ASKtest
  Feature: Log in
    @ASKtest1
    Scenario: log in as a student
      Given I open url "http://ask-stage.portnov.com"
      Then I should see page title contains "Assessment Control @ Portnov"
      When I type "skgj093rj@yopmail.com" into element with xpath "//input[@placeholder='Email *']"
      And I type "12345Abc" into element with xpath "//input[@placeholder='Password *']"
      And I click on element with xpath "//span[text()='Sign In']"
      Then I wait for element with xpath "//p[text()='STUDENT']" to be present






      
      
      