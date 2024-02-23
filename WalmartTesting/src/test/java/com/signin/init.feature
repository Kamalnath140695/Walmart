   Feature: Initialize WebDriver

   Scenario: Initialize WebDriver
     * def driver = Java.type('javaclass.WebDriverUtils').getWebDriver()
     * karate.write(driver, 'driver')