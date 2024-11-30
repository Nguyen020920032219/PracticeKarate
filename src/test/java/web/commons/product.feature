Feature:

  Background:
    * def product = read("classpath:web/locators/product.json")

  @SearchForBoyfriendShirts
  Scenario:
    * input(product.productSearchBox, "Boyfriend Shirts")
    * waitFor(product.boyfriendShirts)

  @ClickBoyfriendShirts
  Scenario:
    * click(product.boyfriendShirts)
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/product/edit/12")
    * waitFor(product.editPage)
    * delay(2000)

  @VerifyBoyfriendShirts
  Scenario:
    * match exists(product.store) == true
    * match text(product.store) == "Trendy Fashion"
    * match exists(product.name) == true
    * match value(product.name) == "Boyfriend Shirts"
    * match exists(product.tax) == true
    * match text(product.tax) == "Sales Tex"
    * click(product.inventoryButton)
    * match exists(product.type) == true
    * match text(product.type) == "Simple Product"
    * match exists(product.stockStatus) == true
    * match text(product.stockStatus) == "In Stock"
    * match exists(product.sku) == true
    * match value(product.sku) == "FASH15"
    * match exists(product.stockQuantity) == true
    * match value(product.stockQuantity) == "27"
    * match exists(product.price) == true
    * match value(product.price) == "12"
    * match exists(product.discount) == true
    * match value(product.discount) == "12"
    * match exists(product.salePrice) == true
    * match value(product.salePrice) == "10.56"
    * match exists(product.wholesalePriceType) == true
    * match text(product.wholesalePriceType) == "Fixed"
    * screenshot()

  @InputProductInfo
  Scenario:
    * click(product.selectProductType)
    * click("{}Physical Product")
    * click(product.selectStore)
    * click("{}Code Chronicle")
    * input(product.name, "Random")
    * input(product.shortDescription, "Demo")
    * input(product.description, "Demo")
    * click(product.selectTax)
    * click("{}Sales Tex")
    * click(product.saveButton)
    * delay(1500)
    * def randomString = (Math.random().toString(36).substr(2, 6))
    * input(product.sku, randomString)
    * input(product.stockQuantity, "10")
    * input(product.price, "100")
    * input(product.discount, "5")
    * click(product.saveButton)
    * delay(1500)
    * click(product.saleStatusSwitch)
    * def today = new Date().toISOString().slice(0, 10)
    * value(product.saleStartDate, today)
    * def endDate = (new Date(new Date().setDate(new Date().getDate() + 20))).toISOString().slice(0, 10)
    * value(product.saleEndDate, endDate)
    * click(product.openCategories)
    * click(product.selectedCategory)
    * click(product.closeCategories)
    * click(product.openBrands)
    * click(product.selectedBrand)
    * click(product.saveButton)

  @VerifyProductSaveSuccessfully
  Scenario:
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/product")
    * delay(2000)
    * match exists(product.successfullyNotification) == true
    * match exists("//div[normalize-space()='" + randomString + "']") == true
    * match text("//div[normalize-space()='" + randomString + "']") == randomString
    * screenshot()