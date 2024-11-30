Feature:

  Background:
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}
    * def home = read("classpath:mobile/locators/homescreen.json")
    * def scrollToElement =
"""
function() {
  var i = 0;
  while (i < 5) {
    // Thử tìm phần tử bằng UiAutomator2
    var element = driver.eval('new UiSelector().text("Fresh Vagetables")');
    if (element) {
      karate.log('Element found: ', 'new UiSelector().text("Fresh Vagetables")');
      return true;
    }
    // Thực hiện thao tác cuộn nếu chưa tìm thấy
    driver.touchAction([
      { action: 'press', options: { x: 500, y: 1000 } },
      { action: 'wait', options: { ms: 500 } },
      { action: 'moveTo', options: { x: 500, y: 200 } },
      { action: 'release' }
    ]);
    i++;
  }
  karate.log('Element not found after', 5, 'scroll attempts');
  return false;
}
"""


  @OpenECartApp
  Scenario:
    * driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

  @VerifyHomeScreen
  Scenario:
    * match exists(home.skipButton) == true
    * match text(home.skipButton) == "SKIP"
    * match exists(home.nextButton) == true
    * match text(home.nextButton) == "NEXT"
    * match exists(home.lookForThingsAroundYouText) == true
    * match text(home.lookForThingsAroundYouText) == "Look for things around you"
    * screenshot()

  @ClickNext
  Scenario:
    * click(home.nextButton)
    * delay(1000)
    * click(home.nextButton)
    * delay(1000)
    * click(home.nextButton)
    * delay(1000)

  @VerifyLocationDisplay
  Scenario:
    * match exists(home.searchPinTextBox) == true
    * match text(home.searchPinTextBox) == "Search Pin Code"
    * match exists(home.searchButton) == true
    * match text(home.searchButton) == "Search"
    * match exists(home.locationDisplayAll) == true
    * match text(home.locationDisplayAll) == "All"
    * match exists(home.locationDisplay370405) == true
    * match text(home.locationDisplay370405) == "370405"
    * match exists(home.locationDisplay841301) == true
    * match text(home.locationDisplay841301) == "841301"
    * match exists(home.locationDisplay800001) == true
    * match text(home.locationDisplay800001) == "800001"
    * match exists(home.locationDisplay370465) == true
    * match text(home.locationDisplay370465) == "370465"
    * match exists(home.locationDisplay370001) == true
    * match text(home.locationDisplay370001) == "370001"
    * screenshot()

  @ClickLocationAll
  Scenario:
    * click(home.locationDisplayAll)
    * delay(2000)

  @ClickCategoryNavigation
  Scenario:
    * waitFor(home.categoryNav)
    * click(home.categoryNav)
    * delay(2000)

  @ScrollToFreshVegetables
  Scenario:
    * def isFound = call scrollToElement()
    * match isFound == true

