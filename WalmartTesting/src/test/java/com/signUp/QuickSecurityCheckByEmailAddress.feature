Feature: QuickSecurityCheckByEmailAddress

  Scenario: Quick Security Check By Email Address
    Given driver verifyYou
    * print verifyYou
    Given call read("classpath:com/signUp/exsistingUser.feature")
    * click("//input[@name='emailAddress']")
    * click("//button[text()='Send Code']")
    * delay(5000)
    * match driver.url contains 'https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F'
    #Scenario: Separate the otp walmart and gmail
    * call read("classpath:gmailOtp/gmailOtpFetch.feature")
    And print otp
    #* def drivernew = karate.getWebDriver()
    #And match otp == "254855"
    #When switchFrame(null)
    * delay(5000)
    * driver.minimize()
    #* switchPage(-1)
    * switchPage("walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F")
    * delay(10000)
    #* switchPage("walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F")
    * match driver.url contains 'https://www.walmart.com/account/verifyitsyou?vid=oaoh&tid=0&returnUrl=%2F'
    And click("#input-verificationCode")
    #* mouse().move("//div[@class='w_DCQG']").click()
    * input("#input-verificationCode']","254855")
    #And input("#input-verificationCode",otp)
    And click("//button[text()='Continue']")
