Feature:

  Background:
    * def response_body = read("classpath:api/datas/response.json")
    * configure driver = {type: "chromedriver", execute: "chromedriver.exe"}
    * url "https://reqres.in"

  @TC_01
  Scenario Outline:
    * header Content-Type = "application/json"
    * path "/api/users?page=<pageNumber>"
    * method get
    * status 200
    * match response == response_body.responePage<pageNumber>

    Examples:
      | pageNumber |
      | 1          |
      | 2          |
