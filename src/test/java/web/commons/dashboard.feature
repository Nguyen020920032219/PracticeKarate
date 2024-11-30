Feature:

  Background:
    * def dashboard = read("classpath:web/locators/dashboard.json")

  @VerifyDashboard
  Scenario:
    * match exists(dashboard.orderStatus) == true
    * match exists(dashboard.totalRevenue) == true
    * match exists(dashboard.totalProducts) == true
    * match exists(dashboard.totalOrders) == true
    * match exists(dashboard.totalStores) == true
    * match exists(dashboard.totalUser) == true
    * match exists(dashboard.averageRevenue) == true
    * match exists(dashboard.topStores) == true
    * match exists(dashboard.recentOrders) == true
    * match exists(dashboard.productStockReport) == true
    * match exists(dashboard.latestReviews) == true
    * match exists(dashboard.topSellingProducts) == true
    * screenshot()

  @ClickAllUsers
  Scenario:
    * click(dashboard.usersButton)
    * click(dashboard.allUsersOption)
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/user")

  @ClickAllProducts
  Scenario:
    * click(dashboard.productsButton)
    * click(dashboard.allProductsOption)
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/product")

  @ClickAddProduct
  Scenario:
    * click(dashboard.productsButton)
    * click(dashboard.addProductOption)
    * waitForUrl("https://admin.pixelstrap.net/multikart-admin-rest/product/create")
