@tests
Feature: ASK smoke tests

  @scenario_student_account
  Scenario: ASK scenario 1
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title contains "Assessment"
    And I type "vickyshin.test@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I wait for 3 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(), 'STUDENT')]" should be present
    And I wait for 3 sec

  @scenario_teacher_account
  Scenario: ASK scenario 2
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title contains "Assessment"
    And I type "vickyshin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I wait for 3 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I wait for 3 sec

  @scenario_teacher_creates_quiz
  Scenario: ASK scenario 3
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title contains "Assessment"
    And I type "vickyshin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I wait for 2 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And I type "My auto test name - Vicky" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
    And I type "Types of testing" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I type "Smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I type "Non-smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I type "Build Acceptance" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[3]"
    And I wait for 2 sec
    # Choose Option 1
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[1]"
    And I wait for 2 sec
     # Choose Option 3 (xpath for Option 2)
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[2]"
    And I wait for 1 sec
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    And I wait for 1 sec
    And I type "Bug report" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']"
    And I type "Non-necessary" into element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I wait for 2 sec
    And I type "Must have" into element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//span[contains(text(),'Add Option')]"
    And I type "Other" into element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[3]"
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q2')]/../../..//div[@class='right']//mat-radio-button)[2]"
    And I wait for 3 sec
    #And I click on element with xpath "//span[contains(text(), 'Save')]"
    #And I wait for 5 sec

  @scenario_teacher_creates_quiz
  Scenario: Scenario 4 (Sequence of Options 1-2-3) DOESN't WORK
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title contains "Assessment"
    And I type "vickyshin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I wait for 2 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And I type "My auto test name - Vicky" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
    And I type "Types of testing" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I type "Smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I type "Non-smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I type "Build Acceptance" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[3]"
    And I wait for 2 sec
    # Choose Option 1
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[1]"
    And I wait for 2 sec
     # Choose Option 2
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[2]"
    And I wait for 2 sec
     # Choose Option 3
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[3]"
    And I wait for 1 sec

  @scenario_teacher_creates_quiz
  Scenario: Scenario 5 (Sequence of Options 3-2-1) WORKS
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title contains "Assessment"
    And I type "vickyshin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I wait for 2 sec
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And I type "My auto test name - Vicky" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
    And I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]"
    And I type "Types of testing" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I type "Smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]"
    And I type "Non-smoke" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I click on element with xpath "//span[contains(text(),'Add Option')]"
    And I type "Build Acceptance" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[3]"
    And I wait for 2 sec
    # Choose Option 3
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[3]"
    And I wait for 2 sec
     # Choose Option 2
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[2]"
    And I wait for 2 sec
     # Choose Option 1
    And I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[1]"
    And I wait for 1 sec