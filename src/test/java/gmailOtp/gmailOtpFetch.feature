Feature: Gmail otp fetch from the mail

  Background: 

  Scenario: Click on the recent received mail from walmart
    #* call read("classpath:gmailOtp/loginGmail.feature")
    When switchFrame(null)
    * switchPage("https://mail.google.com/mail/u/0/#inbox")
    And waitFor("//div[@role='main']//table[@role='grid']//tbody//tr[1]")
    And click("//div[@role='main']//table[@role='grid']//tbody//tr[1]")
    * delay(5000)
    And click("//span[@class='ams bkG']")
    * def otp = text("//strong")
    * print otp
    #And match otp == "25614"
    * mouse().move("//div[@class='J-J5-Ji bty']").click()
