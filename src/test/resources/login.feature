Feature: SignIn Process

  Background: 

  @SignIn
  Scenario: Signin the walmart account
    Given call read("classpath:com/signUp/SignInCreate.feature@SigninOrCreate")
    When waitFor("#ld_radio_2").click()
    Then click("#react-aria-4")
    Then input("#react-aria-4",password)
    And click("#ld_checkbox_0")
    And click("#ld_checkbox_0")
    And click("#withpassword-sign-in-button")
    And click("{button}Send Code")
