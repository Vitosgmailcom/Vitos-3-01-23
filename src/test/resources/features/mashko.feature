@testset
Feature: Smoke steps for test ASK013123-556


  @firstscenario
  Scenario: Login at stage web site
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-login-page[1]/mat-card[1]" should be present
    And I type "katya.mashko@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345qwerty12" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    And I wait for 1 sec
  #Making a quizz
    And I click on element with xpath "//mat-icon[contains(text(),'edit')]"
    Then I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
  #Making a title
    Then I type "Trying text with 999 characters" into element with xpath "//input[@formcontrolname='name']"
    Then I wait for 1 sec
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    #span[contains(text(),'+')]
    Then I wait for 1 sec
    And I click on element with xpath "//mat-radio-button[3]"
    And I wait for 1 sec
  #Add a question
    Then I type "rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfd )&)(&(&$#$ sdfdlkjgfdkljsfd l;kdfg;lkgfdl;kdfg$#$#%@@$@ kljgfdkljgfdklj rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfd )&)(&(&$#$ sdfdlkjgfdkljsfd l;kdfg;lkgfdl;kdfg$#$#%@@$@ kljgfdkljgfdklj rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfd )&)(&(&$#$ sdfdlkjgfdkljsfd l;kdfg;lkgfdl;kdfg$#$#%@@$@ kljgfdkljgfdklj rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfd )&)(&(&$#$ sdfdlkjgfdkljsfd l;kdfg;lkgfdl;kdfg$#$#%@@$@ kljgfdkljgfdklj rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfd )&)_+(&(&$#$ sdfdlkjgfdkljsfd l;kdfg;lkgfdl;kdfg$#$#%@@$@ kljgfdkljgfdklj rlikjusfdlkjfdglkojgfd;lokgsfdlikojuhgljkdgfr $%%$^%$&%$#@@& kljdfrglkjdgf;lkdgf;lk l;kfdrg;lkgfdfgfsrjgghhbnm,e gfghgf fhfge fghfh fhfgh fdfhfgh gfhfgh" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']"
    #Click the correct answer
    Then I click on element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox[@class='answer mat-checkbox mat-accent'])[2]"
    And I wait for 1 sec
    Then I type "Answer option 1" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]"
    Then I type "Answer option 2" into element with xpath "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then I should see page title as "Assessment Control @ Portnov"
    And I wait for 5 sec
  #Then your quiz should be created and saved. Test is passed


  @secondscenario
  Scenario: first steps 1
    Given Kat open url "Here is a link"
    And Kat type "katya.mashko@gmail.com" into "EmailField"
    And Kat type "12345qwerty12" into "PasswordField"
    And Kat click on element "SubmitButton"
    And I wait for 3 sec


