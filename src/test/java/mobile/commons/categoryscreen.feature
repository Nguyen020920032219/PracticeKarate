Feature:

  Background:
    * def category = read("classpath:mobile/locators/categoryscreen.json")

  @VerifyCategoryScreen
  Scenario:
    * match exists(category.categoryTitleCoffeeProduct) == true
    * match text(category.categoryTitleCoffeeProduct) == "Coffee Product"
    * match exists(category.categoryTitleFastFood) == true
    * match text(category.categoryTitleFastFood) == " Fast Food"
    * match exists(category.categoryTitleHomeSuppliesUtilitiesStationery) == true
    * match text(category.categoryTitleHomeSuppliesUtilitiesStationery) == " Home Supplies, Utilities & Stationery"
    * match exists(category.categoryTitleBeverages) == true
    * match text(category.categoryTitleBeverages) == "Beverages"
    * match exists(category.categoryTitleBabyNeeds) == true
    * match text(category.categoryTitleBabyNeeds) == " Baby Need's"
    * match exists(category.categoryTitleVegetables) == true
    * match text(category.categoryTitleVegetables) == "Vegetables"
    * screenshot()