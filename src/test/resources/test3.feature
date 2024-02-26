Feature: Switch Windows Demo

  Background: 
    * def windowHandles = []
    * configure driver = { type: 'chrome', showDriverLog: true }
    * configure driver.session = { windowHandles: '#(windowHandles)' }
    * def driver = karate.callSingle('driver')

  Scenario: Open a new tab and switch back
    Given driver 'https://www.google.com'
    When driver.input('name=q', 'Karate DSL')
    And driver.submit('name=q')
    Then match driver.title == 'Karate DSL - Google Search'
    * driver.quit()
