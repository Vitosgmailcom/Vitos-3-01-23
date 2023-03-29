@tdtests
Feature: TD tests

@askscenario1
  Scenario: ASK scenario Create and Activate New User
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then I type "TatTest" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "TatUser" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "myfakeemail@email.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "A1A1A1" into element with xpath "//input[@formcontrolname='group']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 5 sec
    And I retrieve activation info for email "myfakeemail@email.com"
    Then I activate user


@askscenario2
  Scenario: ASK scenario Create and assign new quiz
    Given Tat open url "My string"
    Then Tat type "1979dakata@gmail.com" into "EmailField"
    And Tat type "12345Abc" into "PasswordField"
    Then Tat click on "SubmitButton"
    And I wait for 2 sec
    Then Tat click on "Quizzes"
    And I wait for 2 sec
    Then Tat click on "Create New Quiz"
    And I wait for 2 sec
    And Tat type "Tat Quiz" into "Title Of The Quiz"
    Then Tat click on "Add Question"
    Then Tat click on "Single-Choice"
    And I wait for 3 sec
    And Tat type "Tat Question 1" into "Question"
    And Tat type "Tat Answer 1" into "Option 1"
    And Tat type "Tat Answer 2" into "Option 2"
    And Tat click on "Radio Button"
    And Tat click on "Is Show-Stopper question"
    And I wait for 5 sec
    Then Tat click on "Add Question 2"
    And I wait for 3 sec
    And Tat click on "Multiple-Choice"
    And I wait for 3 sec
    And Tat type "Tat Question 2" into "Question 2"
    And Tat type "Tat Answer 1 for question 2" into "Q2 Option 1"
    And Tat type "Tat Answer 2 for question 2" into "Q2 Option 2"
    And Tat click on "Q2 Radio Button"
    And I wait for 3 sec
    Then Tat click on "Save"
    And I wait for 3 sec
    Then Tat click on "Assignments"
    And I wait for 5 sec
    Then Tat click on "Create New Assignment"
    And I wait for 4 sec
    Then Tat click on "Select Quiz To Assign"
    Then Tat scroll on "Tat Quiz"
    And I wait for 3 sec
    Then I scroll to the element with xpath "//text()[contains(.,'TatTest TatUser')]/.." with offset 5
    And I wait for 5 sec
    Then Tat click on "Select Student"
    And Tat click on "Give Assignment"
    And I wait for 7 sec


@Scenario3
  Scenario: ASK scenario "Taking a quiz"
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    And I type "myfakeemail@email.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(), 'My Assignments')]"
    And I wait for 3 sec
    And I click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    And I wait for 2 sec
    Then I click on element with xpath "//div[contains(text(),'Tat Answer 2')]"
    And I wait for 5 sec
    And I click on element with xpath "//span[contains(text(),'Tat Answer 1 for question 2')]"
    And I wait for 5 sec
    And I click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And I wait for 7 sec
    And I click on element with xpath "//span[contains(text(),'Ok')]"



@Scenario4
  Scenario: Deleting User
    Given Tat open url "My string"
    Then Tat type "1979dakata@gmail.com" into "EmailField"
    And Tat type "12345Abc" into "PasswordField"
    Then Tat click on "SubmitButton"
    And I wait for 2 sec
    Then Tat click on "User's Management"
    And I wait for 5 sec
    Then Tat scroll on "TatTest TatUser"
    And I wait for 5 sec
    Then Tat click on "Options"
    And I wait for 5 sec
    Then Tat click on "Delete User"
    And I wait for 3 sec
    Then Tat click on "Delete"
    And I wait for 5 sec

@scenario5
  Scenario: Deleting Quiz
    Given Tat open url "My string"
    Then Tat type "1979dakata@gmail.com" into "EmailField"
    And Tat type "12345Abc" into "PasswordField"
    Then Tat click on "SubmitButton"
    And I wait for 2 sec
    Then Tat click on "Quizzes"
    And I wait for 5 sec
    Then Tat scroll on "Tat Quiz 2 Questions"
    And I wait for 5 sec
    Then  Tat click on "Delete Quiz"
    And I wait for 5 sec
    Then Tat click on "Delete in red"
    And I wait for 5 sec














