class ApiEndpoints {
  ApiEndpoints._();
  static String signIn = 'get-signin-otp';
  static String verifyOtp = 'verify-customer-signin';

  static String storeList(String query) =>
      'get_store_fields-v2?query=$query&images=1&business_types=1';

  static String homeProducts(int storeId, int? custId) =>
      'home-page?store_id=$storeId&cust_id=$custId';
  static String cart = 'cart';

  static String catProduct({int? storeId, int? catId, int? custId}) =>
      'product?store_id=${storeId ?? 0}&cust_id=$custId&category_id=$catId&sort=1&brands=0&rating=0&price_from&price_to&page_first_result=0&result_per_page=30';

  static String cartList({int? custId, int? storeId}) =>
      'cart?store_id=$storeId&cust_id=$custId';

  static String categoryLists(int storeId) => "category?store_id=$storeId";
  static String deleteCart = 'delete-cart';
  static String address(int custId) =>
      'customershippingaddress?cust_id=$custId';
  static String newAddress = 'customershippingaddress';
  static String editAddress(int custId) =>
      'customershippingaddress?cust_id=$custId';
  static String preOrderCategory(int storeId) =>
      "category?store_id=$storeId&is_pre_order=1";
  static String popularThisWeek(int storeId) =>
      "popular-this-week?store_id=$storeId&page_first_result=0&result_per_page=10";

  static String subCategory(int storeId, int catId) =>
      "sub-categories?category_id=$catId&store_id=$storeId";

  static String searchProucts({int? storeId}) =>
      'product-search?store_id=$storeId&page_first_result=0&results_per_page=10&details=1';

  static String dealOfTheDay(int storeId) =>
      'product?store_id=$storeId&offerdate=2&result_per_page=20&page_first_result=0';
  static String featureProduct(int storeId) =>
      "deal-product-categories-brands?store_id=$storeId&deals_duration=2";

  static String relatedProducts(int storeId, int? custId) =>
      'related-product-cart?store_id=$storeId&cust_id=$custId';

  static String clearAll = 'clear-cart';
  static String checkout = 'productorder';
  static String searchProducts(int storeId, int custId) =>
      'product-search?store_id=$storeId&cust_id=$custId&page_first_result=0&results_per_page=10';

  static String productDetail(int storeId, int? productId) =>
      "product?product_id=$productId&store_id=$storeId";

  static String categoryTop(int storeId) => 'main-categories?store_id=$storeId';

  static String order(int storeId, int custId) =>
      "productorder?store_id=$storeId&cust_id=$custId";

  static String orderDetail(int? orderId) => 'productorderitem/$orderId';
  static String wishList(int storeId, int? custId) =>
      'wishlist?cust_id=$custId&store_id=$storeId';

  static String addWish = 'wishlist';
  static String time(String day, int storeId) =>
      'slots?store_id=$storeId&working_day=$day';

  static String termsAndCondtion = 'terms-and-conditions';
  static String privacyPolicy = 'privacy-policy';
  static String aboutUs(int storeId) => 'about-us/store_id=$storeId';
  static String returnPolicy = 'return-policy';
}
