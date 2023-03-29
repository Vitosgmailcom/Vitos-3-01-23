@E2Ec
Feature: E2E

  @E2E_NewQuiz
  Scenario: Create a new quiz
    Then I login as a Teacher "EmailField" and "PasswordField"
    Then I wait for 2 sec
    Then I create a new quiz

  @E2E_NewStudent
  Scenario: Create a new student account
    Then I create a new Student with email "vkqa20231@gmail.com" and password "Fall2022!"


  @E2E_AssignQuiz
  Scenario: Assign a quiz to the Student
    Then I login as a Teacher "EmailField" and "PasswordField"
    Then I Assign a quiz to a student

  @E2E_AssignQuiz
  Scenario: Student submits quiz
    Then I login as a Student

