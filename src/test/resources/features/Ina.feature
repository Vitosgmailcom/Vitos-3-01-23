@asktest
Feature:  ASK tests


  # Registration-"New User-First Name- new feature added"
@askscenario
 Scenario: ASK scenario
 Given IB open url "http://ask-stage.portnov.com/#/registration"
  And IB type "Ina" into "FirstName"
  And IB wait for "3" sec
  And IB type "Belab" into "LastNameField"
  And IB wait for "3" sec
  And IB type "belobokqa_1@gmail.com" into "EmailField"
  And IB wait for "3" sec
  And IB type "ASK131" into "GroupCodeField"
  And IB wait for "3" sec
  And IB type "12345#" into "PasswordField"
  And IB wait for "3" sec
  And IB type "12345#" into "ConfirmPasswordField"
  And IB wait for "3" sec
  Then IB click on "RegisterMeButton"
  And IB wait for "3" sec

 # I wish everyone- Have a good day!!!:)))



 # TEST - "Change Student Name"
 # REQUIREMENTS:
 # With each new Test Run, please change the userName in LINES: 7; 15;19
 # Test data: "Ina" change to "InaBina" and vice versa for new Test Run.
 
 @askscenario1git
 Scenario: ASK scenario 1
  Given I open url "http://ask-stage.portnov.com/#/login"
  And I type "ask_8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
  And I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
  And I click on element with xpath "//button[@type='submit']"
  And I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
  Then element with xpath "//p[contains(text(), 'STUDENT')]" should be present
  Then element with xpath "//h3[contains(text(), 'InaBina')]" should be present
  And I wait for 5 sec
  And I click on element with xpath "//h5[contains(text(), 'Setting')]"
  And I wait for 5 sec
  Then element with xpath "//span[contains(text(), 'Change Your Name')]" should be displayed
  And I click on element with xpath "//span[contains(text(), 'Change Your Name')]"
  And I wait for 4 sec
  Then I clear element with xpath "//input[@formcontrolname='name']"
  And I type "Ina" into element with xpath "//input[@formcontrolname='name']"
  And I wait for 5 sec
  And I click on element with xpath "//button[@mat-raised-button][@type='button']"
  And I wait for 4 sec
  Then element with xpath "//h3[contains(text(), 'Ina')]" should contain text "Ina"
  And I wait for 5 sec
  Then change name back
  And I click on element with xpath "//h5[contains(text(), 'Log Out')]"
  And I wait for 5 sec
  Then element with xpath "//h1[contains(text(), 'Confirmation')]" should be displayed
  And I wait for 5 sec
  And I click on element with xpath "//span[contains(text(), 'Log Out')]"
  And I wait for 4 sec

  # Thank you and Good Luck with test!!!:):):)

























   
   
    











