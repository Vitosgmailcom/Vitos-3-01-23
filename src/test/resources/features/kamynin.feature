
## Forgot password E2E (positive)

    @I_can_do_it
    Feature: Learning on how to work with repositories

      @Forgot_password
      Scenario: forgot password
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I wait for element with xpath "//h3[contains(text(),'Assessment Control')]" to be present
        Then element with xpath " //*[text()='I forgot my password']" should be present
        And I click on element using JavaScript with xpath " //*[text()='I forgot my password']"
        Then element with xpath " //*[text()='Reset Password Request']" should be present
        And I type "vitaly.kamynin@gmail.com" into element with xpath "//*[@id='mat-input-2']"
        Then I click on element using JavaScript with xpath "//*[text()='Request Password Reset']"
        Then I wait for element with xpath "//*[text()='Request Password Reset']" to be present

    
