Feature: openGoogleWebsite

  @openGoogle
  Scenario: open the google website
    * url googleUrl
    * script("window.open('https://www.google.com', '_blank').name")
    * driver.switchPage(0)
    And driver.maximize();

  #@ignore @openWalmartWebsite
  #Scenario: OpenWalmart Website
    #* call read("classpath:com/signUp/openGoogleWebsite.feature@openGoogle")
    #And input('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/textarea','walmart')
    #* input('body', Key.ENTER)
    #* dialog(false)
    #And click('(//a[@href='https://www.walmart.com/'])[1]')
