Feature:

  Background:
    * def user = read("classpath:web/locators/user.json")

  @VerifyAllUsers
  Scenario:
    * match exists(user.user1) == true
    * match text(user.user1) == "Rhoda Mayer"
    * match exists(user.user2) == true
    * match text(user.user2) == "Jack Doe"
    * match exists(user.user3) == true
    * match text(user.user3) == "Rhoda Mayer"
    * match exists(user.user4) == true
    * match text(user.user4) == "john due"
    * screenshot()


