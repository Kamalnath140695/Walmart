Feature: Initialize WebDriver

  Scenario: 
   * karate.configure('driver', { type: 'chrome', showDriverLog: true,start:true, stop: false, addOptions: ["--remote-allow-origins=*,--disable-popup-blocking=*, --disable-save-password-bubble=*,--disable-infobars=*"] });
  * karate.configure('driverTarget', { docker: 'karatelabs/karate-chrome', secComp: 'src/test/java/chrome.json'});
   