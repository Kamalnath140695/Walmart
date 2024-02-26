Feature: exsistingUser

  Scenario: Exsisting user login in the walmart
    Given url oldUserUrl
    * print oldUserUrl
    Given call read("classpath:com/signUp/SignInCreate.feature")
    #* click("//*[@id='ld_radio_2']")
    * click("//input[@type='password']")
    * input("//input[@type='password']","Kamal@146")
    * click("//button[@type='submit']")
