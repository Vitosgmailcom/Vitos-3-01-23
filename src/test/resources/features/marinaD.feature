@asktests
Feature: ASK tests

 # @askscenario1
  Scenario: ASK scenario 1
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "marina4qa@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
    And I wait for 1 sec
    And I type "My test quiz name - marina" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
    And I type "Question 1" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I type "Option 1" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[2]"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]"
    And I wait for 1 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    And I type "Question 2" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']"
    And I type "Option 1" into element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//div[@class='right']//mat-radio-button)[2]"
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    And I wait for 5 sec


  @askscenario2
  Scenario: Manually graded Quiz is moved to Reviewed section
    Given I open url "http://ask-stage.portnov.com"
    Then I wait for 2 sec
    Then I should see page title contains "Assessment"
    And I type "marina4qa@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
    And I wait for 3 sec
    And I type "QA-Textual" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]"
    And I wait for 3 sec
    And I click on element with xpath "(//div[@class='mat-radio-label-content'])[contains(text(),'Textual')]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I wait for 2 sec
    And I type "What is Software Quality Assurance?" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(), 'Save')]"
    And I wait for 6 sec
    And I click on element with xpath "//div[@class='mat-list-text']/../../../..//*[contains(text(),'Assignments')]"
    And I wait for 5 sec
    And I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And I click on element with xpath "(//div[@class='mat-select-value'])[1]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-option[@class='mat-option ng-star-inserted'][contains(.,'ASK131')]"
    And I click on element with xpath "(//div[@class='mat-select-value'])[contains(.,'Select Quiz To Assign')]"
    And I wait for 5 sec
    And I click on element with xpath "//mat-option[@class='mat-option ng-star-inserted'][contains(.,'QA-Textual')]"
    And I wait for 5 sec
    And I click on element with xpath "(//div[@class='mat-list-item-content mat-list-item-content-reverse'])[contains(.,'Marina StuD')]"
    And I click on element with xpath "//span[contains(text(),'Give Assignment')]"