Feature: Login to the gmail website

  Background: 
   
   #* configure driver = { type: 'chrome',stop: false, addOptions: ["--remote-allow-origins=*"]}
  Scenario: 
    # Given call read("classpath:com/signUp/SignInCreate.feature")
    Given call read("classpath:com/signUp/openGoogleWebsite.feature@openGoogle")
    And input('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/textarea','gmailLogin')
    * input('body', Key.ENTER)
    And waitFor("//h3[text()='Sign in - Google Accounts']").click()
    And waitFor("#identifierId").click()
    And input("#identifierId",gmailsigninemailId)
    And waitFor("//span[text()='Next']").click()
    And waitFor("input[type=password]").click()
    * delay(3000)
    And input("input[type=password]",Password)
    And waitFor("//span[text()='Next']").click()
    When switchFrame("//iframe[@name='app']")
    And click("//span[@data-text='Gmail']")
    * delay(5000)
    #And driver { script: 'const tabs = window.openedWindows[1].focus()' }
    #And waitFor("/html/body/div[7]/div[3]/div/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[8]/div/div[1]/div[2]/div/table/tbody/tr[1]/td[5]/div/div/div/div/span").doubleClick()
    #And waitFor("/html/body/div[7]/div[3]/div/div[1]/div/div[2]/div[2]/header/div[2]/div[2]/div[2]/form/div/table/tbody/tr/td/table/tbody/tr/td/div/input[2]").click()
    #And input("/html/body/div[7]/div[3]/div/div[1]/div/div[2]/div[2]/header/div[2]/div[2]/div[2]/form/div/table/tbody/tr/td/table/tbody/tr/td/div/input[2]",gmailSearch)
    #And waitFor("//button[@aria-label="Search mail"]").click()
    #And waitFor("(//span[text()='Walmart'])[1]").click()
