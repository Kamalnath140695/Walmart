Feature: Open New Tab in Karate

  Background: 
  Scenario: 
   * def driver =karate.get(driver)
    * driver 'https://www.example.com'

  Scenario:
  * def driver =karate.get(driver)
    * driver 'https://www.w3schools.com'
    * script("window.open('https://www.w3schools.com', '_blank').name")
