#    Feature Description:

#    The whole Feature runs successfully with all 8 scenarios and 181 steps:

#    1. Teacher - Create Textual Quiz
#    2. Common - Register New User
#    3. Teacher - Assign Quiz to Student (New User)
#    4. Student - Submit Assignment (found by Title)
#    5. Teacher - Grade Quiz
#    6. Student - Check status of Graded Quiz (Passed)
#    7. Teacher - Delete Quiz (found by Title)
#    8. Teacher - Delete User (found by Name)

#  PLEASE DELETE USER AND QUIZ: it is done by Scenarios 7 and 8

#    Have Fun, Guys!

@ask-alexa-feature
Feature: Alexa's Ask Tests - Passed Textual Quiz - E2E (positive)

  @askscenario-alexa01
  Scenario: ASK scenario 1 - Teacher - Create Textual Quiz (3 questions, no show-stoppers)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "rusbelser@justademo.cf" into "EmailField"
    And Person type "12345#" into "PasswordField"
    Then Person click on "SubmitButton"
#      How to create Person java def step for the line below?:
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    And I wait for 2 sec
#      How to create Person java def step for the line below?:
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I wait for 1 sec
    And Person click on "Quizzes"
    And I wait for 1 sec
    And Person click on "CreateNewQuiz"
    And I wait for 1 sec
    And Person type "Alexa Textual Quiz" into "QuizTitle"
    And Person click on "AddQuestion"
    And I wait for 1 sec
    And Person click on "SelectTextual1"
    And I wait for 1 sec
    And Person type "What is Gherkin?" into "TextualQuestion1"
    And I wait for 1 sec
    And Person move 3 step "left" at "PointsSlider1"
    And I wait for 1 sec
    And Person click on "AddQuestion"
    And I wait for 1 sec
    And Person click on "SelectTextual2"
    And I wait for 1 sec
    And Person type "What is Selenium?" into "TextualQuestion2"
    And I wait for 2 sec
    And Person move 1 step "right" at "PointsSlider2"
    And I wait for 1 sec
    And Person click on "AddQuestion"
    And I wait for 1 sec
    And Person click on "SelectTextual3"
    And I wait for 1 sec
    And Person type "What is Cucumber?" into "TextualQuestion3"
    And I wait for 1 sec
    And Person move 4 step "right" at "PointsSlider3"
    And I wait for 2 sec
    And Person click on "SaveButton"
    And I wait for 3 sec

  @askscenario-alexa02
  Scenario: ASK scenario 2 - Common - Registration of a new user
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then Person type "SeleniumTester" into "LastName"
    And Person type "Alexandra" into "FirstName"
    And Person type "alexa_fake_email@gmail.com" into "EmailField"
    And Person type "ASK23" into "GroupCode"
    And Person type "12345#Abc" into "PasswordField"
    And Person type "12345#Abc" into "ConfirmPassword"
    Then Person click on "RegisterMeButton"
    And I wait for 2 sec
#    Just note: Activation code comes from the AlexaHelper java file:
    And I retrieve activation code info for email "alexa_fake_email@gmail.com"
    And I wait for 2 sec
    And I activate mine user
    And I wait for 2 sec

  @askscenario-alexa03
  Scenario: ASK scenario 3 - Teacher - Assign Quiz to Student (new user)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "rusbelser@justademo.cf" into "EmailField"
    And Person type "12345#" into "PasswordField"
    Then Person click on "SubmitButton"
    And I wait for 2 sec
    And Person click on "Assignments"
    And I wait for 3 sec
    And Person click on "CreateNewAssignment"
    And I wait for 1 sec
    And Person click on "SelectQuizArrow"
    And Person click on "QuizTitleToAssign"
#      How to create Person java def step for the line below?:
    And I scroll to the element with xpath "//text()[contains(., 'Alexandra SeleniumTester')]/.." with offset 5
    And Person click on "StudentName"
    And I wait for 2 sec
    Then Person click on "GiveAssignment"
    And I wait for 5 sec

  @askscenario-alexa04
  Scenario: ASK scenario 4 - Student - Submit Assignment (found by Quiz Title)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "alexa_fake_email@gmail.com" into "EmailField"
    And Person type "12345#Abc" into "PasswordField"
    Then Person click on "SubmitButton"
    And I wait for 4 sec
#      How to create Person java def step for the line below?:
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    And I wait for 4 sec
#      How to create Person java def step for the line below?:
    Then element with xpath "//p[contains(text(), 'STUDENT')]" should be present
    And I wait for 1 sec
    And Person click on "MyAssignments"
    And I wait for 1 sec
    And Person click on "QuizToSubmit"
    And I wait for 3 sec
    And Person type "Gherkin is a language that developers use to define tests in Cucumber. Since this language uses plain English, it’s meant to describe use cases for a software system in a way that can be read and understood by almost anyone." into "Textarea1"
    And Person type "Selenium is an open source umbrella project for a range of tools and libraries aimed at supporting browser automation. It provides a playback tool for authoring functional tests across most modern web browsers, without the need to learn a test scripting language" into "Textarea2"
    And Person type "Cucumber Framework in Selenium is an open-source testing framework that supports Behavior Driven Development for automation testing of web applications. The tests are first written in a simple scenario form that describes the expected behavior of the system from the user's perspective." into "Textarea3"
    And I wait for 2 sec
    And Person click on "SubmitMyAnswers"
    And I wait for 2 sec
    And Person click on "SuccessOk"
    And I wait for 2 sec
    And Person click on "MyGrades"
    And I wait for 3 sec
    And element with xpath "//td[contains(text(), 'Alexa Textual Quiz')]/..//td[4]/span[contains(text(), 'PENDING')]" should be displayed
    And I wait for 3 sec

  @askscenario-alexa05
  Scenario: ASK scenario 5 - Teacher - Grade Textual Quiz (Make it Passed)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "rusbelser@justademo.cf" into "EmailField"
    And Person type "12345#" into "PasswordField"
    Then Person click on "SubmitButton"
#      How to create Person java def step for the line below?:
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    And I wait for 1 sec
#      How to create Person java def step for the line below?:
    Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
    And I wait for 1 sec
    And Person click on "Submissions"
    And I wait for 1 sec
    And Person click on "QuizToGrade"
    And I wait for 2 sec
#      How to write code below in one line? - person clicks at plus button 2 times:
    And Person click on "PlusButton1"
    And Person click on "PlusButton1"
    And I wait for 2 sec
    And Person click on "PlusButton2"
    And Person click on "PlusButton2"
    And Person click on "PlusButton2"
    And Person click on "PlusButton2"
    And Person click on "PlusButton2"
    And Person click on "PlusButton2"
    And I wait for 2 sec
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And Person click on "PlusButton3"
    And I wait for 3 sec
    And Person click on "SaveGrade"
    And I wait for 5 sec

  @askscenario-alexa06
  Scenario: ASK scenario 6 - Student - Check status of Graded Quiz (Passed)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "alexa_fake_email@gmail.com" into "EmailField"
    And Person type "12345#Abc" into "PasswordField"
    Then Person click on "SubmitButton"
    And I wait for 2 sec
      #      How to create Person java def step for the line below?:
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    And I wait for 2 sec
      #      How to create Person java def step for the line below?:
    Then element with xpath "//p[contains(text(), 'STUDENT')]" should be present
    And I wait for 2 sec
    And Person click on "MyGrades"
    And I wait for 3 sec
      #      How to create Person java def step for the line below?:
    And element with xpath "//td[contains(text(), 'Alexa Textual Quiz')]/..//td[4]/span[contains(text(), 'PASSED')]" should be displayed
    And I wait for 3 sec
#      Check here scores are visible

  @askscenario-alexa07
  Scenario: ASK scenario 7 - Teacher - Delete Quiz (found by Title)
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title contains "Assessment"
    Then Person type "rusbelser@justademo.cf" into "EmailField"
    And Person type "12345#" into "PasswordField"
    Then Person click on "SubmitButton"
      #      How to create Person java def step for the line below?:
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    And I wait for 1 sec
    And Person click on "Quizzes"
    And I wait for 1 sec
    And Person click on "QuizToDelete"
    And I wait for 1 sec
    And Person click on "DeleteQuizButton"
    And I wait for 3 sec
    And Person click on "DeleteConfirmationButton"
    And I wait for 2 sec
    And Person click on "Quizzes"
    And I wait for 1 sec
#      How to create Person java def step for the line below?:
    And element with xpath "//mat-panel-title[contains(text(),'Alexa Textual Quiz')]" should not be present
    And I wait for 2 sec

  @askscenario-alexa08
  Scenario: ASK scenario 8 - Teacher - Delete User (found by Name)
    Given I open url "http://ask-stage.portnov.com"
    Then Person type "rusbelser@justademo.cf" into "EmailField"
    And Person type "12345#" into "PasswordField"
    Then Person click on "SubmitButton"
    And I wait for 3 sec
    Then Person click on "UsersManagement"
    And I wait for 1 sec
    And Person click on "StudentToDelete"
    And I wait for 1 sec
    And Person click on "OptionButton"
    And I wait for 2 sec
    And Person click on "DeleteUserButton"
    And I wait for 3 sec
    And Person click on "DeleteConfirmationButton"
    And I wait for 3 sec
      #      How to create Person java def step for the line below?:
    And element with xpath "//text()[contains(., 'Alexandra SeleniumTester')]/.." should not be present
    And I wait for 2 sec

