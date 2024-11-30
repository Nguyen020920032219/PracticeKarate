Feature:

  Background:
    * def login = read("classpath:web/locators/login.json")
    * configure driver = {type: "chrome", addOptions: ["--incognito"]}
    * driver "https://admin.pixelstrap.net/multikart-admin-rest/auth/login"
    * maximize()
    * delay(1000)

  @VerifyLoginPage
  Scenario:
    * match exists(login.username) == true
    * match exists(login.password) == true
    * match exists(login.loginButton) == true
    * match exists(login.forgotPasswordLink) == true
    * match exists(login.signupLink) == true
    * screenshot()

  @Login
  Scenario:
    * input(login.username, login.usernameValue)
    * input(login.password, login.passwordValue)
    * click(login.loginButton)
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/dashboard")
    * screenshot()

