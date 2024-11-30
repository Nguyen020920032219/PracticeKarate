Feature: Mobile Test

  @TC_01
  Scenario:
    * call read("classpath:mobile/commons/homescreen.feature@OpenECartApp")
    * call read("classpath:mobile/commons/homescreen.feature@VerifyHomeScreen")

  @TC_02
  Scenario:
    * call read("classpath:mobile/commons/homescreen.feature@OpenECartApp")
    * call read("classpath:mobile/commons/homescreen.feature@ClickNext")
    * call read("classpath:mobile/commons/homescreen.feature@VerifyLocationDisplay")
    * call read("classpath:mobile/commons/homescreen.feature@ClickLocationAll")
    * call read("classpath:mobile/commons/homescreen.feature@ClickCategoryNavigation")
    * call read("classpath:mobile/commons/categoryscreen.feature@VerifyCategoryScreen")

  @TC_03
  Scenario:
    * call read("classpath:mobile/commons/homescreen.feature@OpenECartApp")
    * call read("classpath:mobile/commons/homescreen.feature@ClickNext")
    * call read("classpath:mobile/commons/homescreen.feature@ClickLocationAll")
    * call read("classpath:mobile/commons/homescreen.feature@ScrollToFreshVegetables")
    * delay(10000)


