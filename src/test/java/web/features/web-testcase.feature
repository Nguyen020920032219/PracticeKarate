Feature: Web Test

  @TC_01
  Scenario: Verify dashboard
    * call read("classpath:web/commons/login.feature@VerifyLoginPage")
    * call read("classpath:web/commons/login.feature@Login")
    * call read("classpath:web/commons/dashboard.feature@VerifyDashboard")

  @TC_02
  Scenario: Verify users page
    * call read("classpath:web/commons/login.feature@Login")
    * call read("classpath:web/commons/dashboard.feature@ClickAllUsers")
    * call read("classpath:web/commons/user.feature@VerifyAllUsers")

  @TC_03
  Scenario: Verify edit product
    * call read("classpath:web/commons/login.feature@Login")
    * call read("classpath:web/commons/dashboard.feature@ClickAllProducts")
    * call read("classpath:web/commons/product.feature@SearchForBoyfriendShirts")
    * call read("classpath:web/commons/product.feature@ClickBoyfriendShirts")
    * call read("classpath:web/commons/product.feature@VerifyBoyfriendShirts")

  @TC_04
  Scenario: Verify add new product
    * call read("classpath:web/commons/login.feature@Login")
    * call read("classpath:web/commons/dashboard.feature@ClickAddProduct")
    * call read("classpath:web/commons/product.feature@InputProductInfo")
    * call read("classpath:web/commons/product.feature@VerifyProductSaveSuccessfully")



