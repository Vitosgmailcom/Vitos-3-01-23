@asktests
Feature: ASK test

@askscenario1
Scenario: Create Quiz
Given I open url "http://ask-stage.portnov.com"
Then I should see page title contains "Assessment"
And I type "infinityks@aliorder.pro" into element with xpath "//input[@formcontrolname='email']"
And I type "12345#" into element with xpath "//input[@formcontrolname='password']"
And I click on element with xpath "//button[@type='submit']"
Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
And I wait for 2 sec
And I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
And I wait for 1 sec
And I type "My test quiz name ABC" into element with xpath "//input[@formcontrolname='name']"
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
