Feature: WebDriver

  Scenario: Initialize WebDriver
    * karate.configure('driver', { type: 'chrome', showDriverLog: true,start:true, stop: false, addOptions: ["--remote-allow-origins=*,--disable-popup-blocking=*"] });
    * configure driver = { driver: '#(driver)' }
