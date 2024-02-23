Feature: SignInCreate

  Background: 
    * configure report = { showLog: true, showAllSteps: false }
    #* configure driver = { type: 'chrome', showDriverLog: true, stop: false, addOptions: ["--remote-allow-origins=*"]}
    * configure printEnabled = true

  #* configure driver = { type: 'chromedriver', showDriverLog: true,stop: false, executable: 'C:\\Users\\Welcome\\ChromeDriver\\chromedriver-win64\\chromedriver.exe', addOptions: ["--remote-allow-origins=*"] }
  @SigninOrCreate
  Scenario: SignOrcreate the walmart account
    # * def result = call read('openGoogleWebsite.feature@openGooglewithWalmart')
    * driver baseUrl
    And driver.maximize();
    * delay(3000)
    * click("{div}Account")
    * delay(5000)
    #* click("{button}create Account")
    And waitFor("{button}Sign in or create account")
    * click("{button}Sign in or create account")
    * waitFor("/html/body/div/div[1]/section/form/div/div/input").click()
    * input("/html/body/div/div[1]/section/form/div/div/input", emailid)
    * click("{button}Continue")
    * delay(3000)
  #@Create
  #Scenario: Create the new user for the walmart
    #Given url CreateUserUrl
    #* print url
    #And click("#ld_ui_textfield_0")
    #And delay(3000)
    #* input("#ld_ui_textfield_0", createName)
    #* click("/html/body/div/div[1]/section/form/div[2]/div/input")
    #* input("/html/body/div/div[1]/section/form/div[2]/div/input",lastName)
    #* click("/html/body/div/div[1]/section/form/div[3]/div[1]/div/input")
    #* input("/html/body/div/div[1]/section/form/div[3]/div[1]/div/input",Password)
    #* click("/html/body/div/div[1]/section/form/div[4]/label")
    #* click("/html/body/div/div[1]/section/form/div[4]/label")
    #* click("/html/body/div/div[1]/section/form/div[4]/div/label[1]/input")
    #* click("/html/body/div/div[1]/section/form/div[4]/div/label[1]/input")
    #* delay(3000)
    #* click("{button}Create Account")
    #* click("/html/body/div/section/div/div/form/div[1]/div/input")
    #* input("/html/body/div/section/div/div/form/div[1]/div/input",phNo)
    #* click("/html/body/div/section/div/div/form/button")
