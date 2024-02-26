Feature: Clicking the subject and sorting the mail and click the walmart mail

Background: 
   
  Scenario: Clicking the subject
    * call read("classpath:gmailOtp/loginGmail.feature")
    When switchFrame(null)
    * switchPage(0)
    * waitFor("/html/body/div[7]/div[3]/div/div[1]/div/div[2]/div[2]/header/div[2]/div[2]/div[2]/form/div/table/tbody/tr/td/table/tbody/tr/td/div/input[1]").click()
    * input("/html/body/div[7]/div[3]/div/div[1]/div/div[2]/div[2]/header/div[2]/div[2]/div[2]/form/div/table/tbody/tr/td/table/tbody/tr/td/div/input[1]","walmart")
    * click("//button[@aria-label='Search mail']")
    And waitFor("//div[@role='main']//table[@role='grid']//tbody//tr[1]")
    And click("//div[@role='main']//table[@role='grid']//tbody//tr[1]")
   When switchFrame(null)
   * def otp = text("/html[1]/body[1]/div[7]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/div[1]/span[1]/p[1]/span[1]/strong[1]")
    * print otp
    * match otp == "2132423"
        
    #* def element = script("document.getElementsByTagName('//strong");
    #Then print 'element--',element
    #* print 'element--',element
    #And waitFor("/html[1]/body[1]/div[7]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/div[1]/span[1]/p[1]/span[1]/strong[1]")
    #* waitFor("//strong")
    #* def extractedText  = text("/html[1]/body[1]/div[7]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/div[1]/span[1]/p[1]/span[1]/strong[1]")
    #* print extractedText
    #* def attributetext  = attribute("/html[1]/body[1]/div[7]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/div[1]/span[1]/p[1]/span[1]/strong[1]")
    #* print attributetext
#* mouse('/html[1]/body[1]/div[7]/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/div[1]/span[1]/p[1]/span[1]/strong[1]').doubleClick()
#		
