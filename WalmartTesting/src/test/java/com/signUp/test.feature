Feature: Open New Tab in Karate

  Scenario: 
    * driver 'https://www.example.com'

  Scenario: 
    * driver 'https://www.w3schools.com'
    * script("window.open('https://www.w3schools.com', '_blank').name")
