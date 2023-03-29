@pinterest
  Feature: Pinterest
    @pinterest1
    Scenario: Responsive design
      Given Ben opens page "PIN_URL"
      Then Ben should see page title as "Pinterest"
      Then Ben resize window to 600 and 1000
      Then Ben waits for 2 sec
      And Ben takes screenshot

    @pinterest2
    Scenario: New window in Penterset
      Given Ben opens page "PIN_URL"
      Then Ben should see page title as "Pinterest"
      Then Ben clicks on element with xpath "Blog"
      And Ben waits for 2 sec