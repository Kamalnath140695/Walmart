Feature: QuickSecurityCheckByEmailAddress

  Scenario: Quick Security Check By Email Address
    Given driver verifyYou
    * print verifyYou
    Given call read("classpath:com/signUp/exsistingUser.feature")
    #* click("//input[@name='emailAddress']")
    * click("//button[text()='Send Code']")
    * delay(5000)
    * match driver.url contains 'https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F'
    #Scenario: Separate the otp walmart and gmail
    * call read("classpath:com/signUp/openGoogleWebsite.feature")
    * match driver.url == "https://www.google.com/"
    * call read("classpath:gmailOtp/loginGmail.feature")
    * def getvariable = call read("classpath:gmailOtp/gmailOtpFetch.feature")
    And print getvariable.otp
    * delay(5000)
    * driver.switchPage("https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F")
    * delay(5000)
    * match driver.url contains 'https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F'
    * waitFor("#input-verificationCode")
    * mouse().move("#input-verificationCode").click()
    * waitFor("#input-verificationCode")
    * input("#input-verificationCode",getvariable.otp)
  
