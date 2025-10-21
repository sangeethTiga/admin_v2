class ApiEndpoints {
  ApiEndpoints._();
  static String commonSign = 'https://cab.resto.qa/api/get-admin-api';
  static String store(int custId, int roleId) =>
      'store?role_id=$roleId&user_id=$custId&page_first_result=0&result_per_page=50';
  static String notification = 'register_notification_device';
  static String salesReport({
    int? selectedStoreId,
    String? fromDate,
    String? toDate,
    String? selectedDeliveryAgentId,
    String? selectedPaymentMethodId,
    String? selectedWaiterId,
    String? selectedShiftId,
    bool? isDayClosed,
    String? selectedCashierId,
    String? selectedKIOSK,
    String? selectedGroupBy,
    int? selectedDuration,
  }) {
    var queryStrinng = '';
    if (selectedDuration == 5) {
      queryStrinng = '&from_date=$fromDate&to_date=$toDate';
    } else {
      queryStrinng = '&duration=$selectedDuration%20month';
    }

    return "salesReport?store_id=$selectedStoreId$queryStrinng&del_agent_id=$selectedDeliveryAgentId&pay_method_id=$selectedPaymentMethodId&waiter_id=$selectedWaiterId&shift_id=$selectedShiftId&day_close_based=${isDayClosed == true ? 1 : 0}&cashier_id=$selectedCashierId&kiosk_id=$selectedKIOSK&group_by=${selectedGroupBy ?? 'month'}";
  }

  static String revenueReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
  ) =>
      'revenuereport?page_first_limit=$pageFirstResult&result_per_page=$resultPerPage&store_id=$storeId&from_date=$fromDate&to_date=$toDate&account_head_id=0';

  static String expenseReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    int account,
  ) =>
      "expenseReport?page_first_limit=$pageFirstResult&result_per_page=$resultPerPage&store_id=$storeId&from_date=$fromDate&to_date=$toDate&account_head_id=$account";
  static String account = 'account-heads?trans_type_id=2';

  static String status = 'orderstatus';

  static String orderList({int? orderId}) => 'productorder_v2/$orderId';
  static String newOrder = 'productorder/get';

  static String orderDetail(int orderId) => 'productorderitem/$orderId';

  static String profitLoss(int storeId, String fromDate, String toDate) =>
      "profitLoss?store_id=$storeId&from_date=$fromDate&to_date=$toDate";

  static String deliveryCharge(
    int storeId,
    String fromDate,
    String toDate,
    int resultPerPage,
    int pageFirstResult,
  ) =>
      "delivery-charge/report?store_id=$storeId&from_date=$fromDate&to_date=$toDate&pagesize=$resultPerPage&offset=$pageFirstResult";

  static String customersReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    int filterId,
  ) =>
      "customerreport?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage&filter_id=$filterId";

  static String proudtcList(
    int storeId,
    int catId,
    String search,
    String barCode,
    int filterId,
    int pageFirstResult,
    int resultPage,
  ) =>
      'product?query=&store_id=$storeId&category_id=$catId&filters=$filterId&product_qty=0&query=$search&bar_code=$barCode&page_first_result=$pageFirstResult&result_per_page=$resultPage';

  static String stockStatus = 'product-item-conditions';
  static String stockUpdate = 'bulk-stock-update';
  static String category(int storeId) => 'categories?store_id=$storeId';
  static String mainCategory(int storeId, int parentCategoryId) =>
      'main-categories?parent_category_id=0&store_id=$storeId';
  static String unit() => 'unit';
  static String createProduct() => 'product';

  static String parcelCharge(
    int pageFirstLimit,
    int resultPerPage,
    String fromDate,
    String toDate,
    int storeId,
    int orderOptionId,
  ) =>
      'parcel_charge/report?page_first_limit=$pageFirstLimit&result_per_page=$resultPerPage&store_id=$storeId&from_date=$fromDate&to_date=$toDate&order_option_id=$orderOptionId';
  static String orderOption(int storeId, int appTypeId) =>
      'order_options?store_id=$storeId&app_type_id=0';

  static String categorySalesReport(
    int storeId,
    String fromDate,
    String toDate,
  ) =>
      'category-sales?store_id=$storeId&from_date=$fromDate&to_date=$toDate';

  static String userShiftReport(
    int storeId,
    String fromDate,
    String toDate,
    int pageFirstResult,
    int resultPerPage,
  ) =>
      'user_shift?store_id=18&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage';

  // static String purchaseReport(
  //   int storeId,
  //   String fromDate,
  //   String toDate,
  //   int pageFirstLimit,
  //   int resultPerPage,
  //   int purchaseType,
  //   int supplierId,
  // ) =>
  //     '/api/purchase_order?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_limit=$pageFirstLimit&result_per_page=$resultPerPage&purchase_type=$purchaseType&supplier_id=$supplierId';

  static String salesDealsReport(
    int storeId,
    String fromDate,
    String toDate,
    int pageFirstResult,
    int resultPerPage,
  ) =>
      'saleondeals?from_date=$fromDate&to_date=$toDate&store_id=$storeId&searchText=&page_first_result=0&result_per_page=50';
  static String purchaseReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int? pageFirstLimit,
    int? resultPerPage,
    int? purchaseType,
    int? supplierId,
    String? query,
  }) =>
      'purchase_order?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_limit=$pageFirstLimit&result_per_page=$resultPerPage&purchase_type=$purchaseType&supplier_id=$supplierId&query=$query';

  static String taxReport(String fromDate, String toDate, int storeId) =>
      'taxreport?from_date=$fromDate&to_date=$toDate&store_id=$storeId';

  static String topStores(int roleId, int userId) =>
      'topallstores?role_id=$roleId&user_id=$userId';
  static String offers(int storeId) =>
      'product_offer_type?store_id=$storeId';
  static String cheque(
    int storeId,
    String status,
    String searchText,
    String fromChequeIssueDate,
    String toChequeIssueDate,
    String fromChequeDate,
    String toChequeDate,
  ) =>
      'cheque-tracks?store_id=$storeId&status=$status&searchtext=$searchText&from_cheque_issue_date=$fromChequeIssueDate&to_cheque_issue_date=$toChequeIssueDate&from_cheque_date=$fromChequeDate&to_cheque_date=$toChequeDate';

  static String chequeStatus() => 'cheque-statuses';

  static String messReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    String query,
    int mealPlansId,
  ) =>
      'mess?page_first_result=0&result_per_page=50&store_id=$storeId&from_date=$fromDate&to_date=$toDate&query=$query&meal_plans_id=$mealPlansId';

  static String categoryProduct(int storeId) =>
      'category?Admin&store_id=$storeId';
  static String productReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    int roleId,
    int userId,
    String searchText,
    int categoryId,
  ) =>
      'fastmovingpdt?role_id=$roleId&user_id=$userId&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage&store_id=$storeId&searchText=$searchText&category_id=$categoryId';

  static String graphRevenue() => 'graphforrevenue';

  static String supplierReport(int storeId, int admin, String query) =>
      'suppliers?store_id=$storeId&Admin=$admin&query=$query';

  static String ordersGraph() => 'graphfororder';

  static String daySummary(int storeId, String toDate) =>
      'day-summary?store_id=$storeId&date=$toDate';
  static String updateProduct(int productId) =>
      'mobapp_productupdate/$productId';

  static String productOffers(
    String fromDate,
    String toDate,
    int storeId,
    int pageFirstResult,
    int resultPerPage,
    String search,
  ) =>
      'product_offer?from_date=$fromDate&to_date=$toDate&store_id=$storeId&searchText=$search&page_first_result=0&result_per_page=50';

  static String getVariant(int productId) =>
      'product_variantdetail/$productId';
  static String specialOffer(int storeId) =>
      'product_offer_type?store_id=$storeId';
  static String editOffer(int prodOfferId) => 'product_offer/$prodOfferId';
  static String createOffer() => 'product_offer';

  static String getDeliveryAgent(int deliveryPartnerId, int storeId) =>
      'delivery_agent?delivery_partner_id=$deliveryPartnerId&store_id=$storeId';
  static String getPaymethod() => '/api/payment_method';
  static String getWaiters(int storeId) =>  
      'store_users?store_id=$storeId&role_id=9';
  static String getKiosk(int storeId) => 'kiosk?store_id=$storeId';
  static String getCashier(int storeId) =>
      'store_users?store_id=$storeId&cashier=1';
  // static String showReport(int storeId,int selectedMonth,int deliveryAgentId,int deliveryPartnerId,int paymethodId,int waiterId,int shift,int cashierId,int selctedKiosk,int groupby)=>'/api/salesReport?store_id=$storeId&duration=$selectedMonth%20months&del_agent_id=$deliveryAgentId&delivery_partner_id=$deliveryPartnerId&pay_method_id=$paymethodId&waiter_id=$waiterId&shift_id=$shift&day_close_based=0&cashier_id=$cashierId&kiosk_id=$selctedKiosk&group_by=$groupby';
  static String getProductName(String query, int storeId) =>
      'product?query=$query&store_id=$storeId&page_first_result=0&result_per_page=1000';

  static String searchOrder(int storeId, String search) =>
      'order_search?order_number=$search&store_id=$storeId&page_first_result=0&result_per_page=30';
  static String customerSearch(int storeId, String custSearch) =>
      'customerreport?store_id=$storeId&cust_name=$custSearch';
        static String getOfferType()=>'offer_type';
}
