Feature: Open New Tab in Karate

  Scenario: 
    * def getvariable = call read('test.feature')
    * match getvariable.variable == "some value"
    * print getvariable.variable
