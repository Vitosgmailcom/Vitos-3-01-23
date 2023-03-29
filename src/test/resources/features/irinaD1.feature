@askscenario-irinaD1
  Feature: IrinaD1-new scenarios
    @irinaD1-1
    Scenario:New assignment
      Given Kira open page "LOG_URL"
      Then Kira is typing "bymike19@hieu.in" into "EmailField"
      Then Kira is typing "12345Abc" into "PasswordField"
      And Kira waits for 5 sec
      Then Kira click on element with xpath "SubmitButton"
      And Kira waits for 1 sec
      Then Kira click on element with xpath "Assignments"
      And Kira waits for 2 sec
      Then Kira click on element with xpath "Create New Assignment"
      And Kira waits for 2 sec
      Then Kira click on element with xpath "Select Quiz To Assign"
      And Kira waits for 2 sec
      And Kira click on element with xpath "SQA Basic-1"
      And Kira scroll to the element with xpath "LauraB" with offset 2
      And Kira waits for 2 sec
      And Kira click on element with xpath "LauraB"
      And Kira waits for 2 sec
      #And Kira click on element with xpath "Give Assignment"
      #And Kira waits for 2 sec

    @irinaD1_2
    Scenario: Activation code
        Given Kira open page "REG_URL"
        Then Kira is typing "Kira" into "FirstName"
        And Kira waits for 1 sec
        Then Kira is typing "Kira" into "LastName"
        And Kira waits for 1 sec
        Then Kira is typing "qakira@gmail.com" into "Email"
        And Kira waits for 1 sec
        Then Kira is typing "131ASK" into "GroupCode"
        And Kira waits for 1 sec
        Then Kira is typing "12345Abc" into "Password"
        And Kira waits for 1 sec
        Then Kira is typing "12345Abc" into "ConfirmPassword"
        And Kira waits for 1 sec
        Then Kira click on element with xpath "RegisterMe"
        And Kira retrieves activation code for "qakira@gmail.com"
        And Kira waits for 1 sec
        And Kira activates user
