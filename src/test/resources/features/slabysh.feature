@YStests
Feature: YS tests

  @YSscenario1
  Scenario: YS scenario 1
    Given I open url "https://store-stage.portnov.com/"
    And I wait for 4 sec
    Then I resize window to 420 and 1200
    And I wait for 3 sec

  @YSscenario2
  Scenario: YS scenario 2
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "YTest" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "SUser" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "ouruser1@email.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "B1" into element with xpath "//input[@formcontrolname='group']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "123abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And YS retrieve activation info for email "ouruser1@email.com"
    And YS activate user

  @YSscenario3
  Scenario: YS scenario 3
    Given I open url "http://ask-stage.portnov.com"
    And YS type "slabyszj@gmail.com" into "EmailField"
    And YS type "123abc" into "PasswordField"
    And Ys click on element "SubmitButton"
    And I wait for 3 sec
    And Ys click on element "Quizzes"
    And I wait for 3 sec
    And Ys click on element "Create New Quiz"
    And I wait for 3 sec
    And YS type "TestQuizeYS2" into "Title Of the Quiz"
    And I wait for 3 sec
    And YS click on "Add Question"
    And YS click on "Multiple-Choise"
    And I wait for 3 sec
    And YS type "Question 1" into "Question 1"
    And I wait for 3 sec
    And YS type "First Option " into "Option1"
    And I wait for 2 sec
    And YS type "Second Option " into "Option2"
    And YS click on "Answer1"
    And YS click on "Add Question"
    And I wait for 1 sec
    And YS click on "Singl Choise"
    And I wait for 1 sec
    And YS type "Question 2 Singl Choise" into "Question 2"
    And I wait for 1 sec
    And YS type "First option" into "Option2.1"
    And I wait for 1 sec
    And YS type "Second option" into "Option2.2"
    And I wait for 3 sec
    And YS click on "Answer2"
    And I wait for 1 sec
    And YS click on "Save"
    And I wait for 3 sec
    And YS click on "Assignments"
    And I wait for 3 sec
    And YS click on "Create New Assignment"
    And I wait for 3 sec
    And YS click on "Select Quiz To Assign"
    And I wait for 1 sec
    And YS click on "TestQuizeYS2"
    And I wait for 5 sec
    And I scroll to the element with xpath "//text()[contains(.,'YTest SUser' )]/.." with offset 5
    And I wait for 3 sec
    And YS click on "Select Student"
    And YS click on "Give Assignment"
    And I wait for 1 sec

  @YSscenario4
  Scenario:  YS scenario 4
    Given I open url "http://ask-stage.portnov.com"
    And YS type "slabyszj@gmail.com" into "EmailField"
    And YS type "123abc" into "PasswordField"
    And Ys click on element "SubmitButton"
    And I wait for 7 sec
    And YS click on "User's Management"
    And I wait for 5 sec
    And I scroll to the element with xpath "//text()[contains(.,'Yuliya Alabysh' )]/.." with offset 5
    And YS click on "Select Student"
    And YS click on "Options"
    And I wait for 3 sec
    And YS click on "Delete User"
    And I wait for 1 sec
    And YS click on "Delete"

  @YSscenario5
  Scenario: YS scenario 5
    Given I open url "https://store-stage.portnov.com/"
    And I wait for 4 sec
    Then I resize window to 420 and 1200
    And I wait for 3 sec
    And I take screenshot
    And I wait for 3 sec

  @YScenario6
  Scenario:  YS scenario 6
    Given I open url "http://ask-stage.portnov.com"
    And YS type "slabyszj@gmail.com" into "EmailField"
    And YS type "123abc" into "PasswordField"
    And Ys click on element "SubmitButton"
    And I wait for 3 sec
    And Ys click on element "Quizzes"
    And I wait for 3 sec
    And Ys click on element "Create New Quiz"
    And I wait for 3 sec
    And YS type "TestQuizeYS2" into "Title Of the Quiz"
    And I wait for 3 sec
    And YS click on "Add Question"
    And YS click on "Multiple-Choise"
    And I wait for 3 sec
    And YS type "Question 1" into "Question 1"
    And I wait for 3 sec
    And I move slider 3 step "right" for xpath "//*[contains(text(),'Q1')]/../../..//mat-slider"
    And I wait for 3 sec
    And I move slider 10 step "left" for xpath "//*[contains(text(),'Passing Rate')]/../..//mat-slider"
    And YS type "First Option " into "Option1"
    And I wait for 2 sec
    And YS type "Second Option " into "Option2"
    And YS click on "Answer1"
    And I wait for 1 sec

  @YSscenario7
  Scenario:  YS scenario 7
    Given I open url "http://ask-stage.portnov.com"
    And YS type "ouruser@email.com" into "EmailField"
    And YS type "123abc" into "PasswordField"
    And Ys click on element "SubmitButton"
    And I wait for 4 sec
    And Ys click on element "My Assignments"
    And I wait for 2 sec
    And Ys click on element "Go To Assessment"
    And I wait for 2 sec