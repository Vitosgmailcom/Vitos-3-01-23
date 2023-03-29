@patilstepdefs
  Feature: First Steps
    
    @patilstep1
    Scenario: Check search functionality on Google.com
      Given I open url "https://www.google.com/"
      Then I click on element with xpath "//input[@class='gLFyf']"
      Then I type "Potato" into element with xpath "//input[@class='gLFyf']"
      Then I click on element with xpath "//input[@class='gNO89b']"
      Then I wait for 3 sec
    