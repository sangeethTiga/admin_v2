class ApiEndpoints {
  ApiEndpoints._();
  static String commonSign = 'https://cab.resto.qa/api/get-admin-api';
  static String store(int custId) =>
      '/api/store?user_id=$custId&page_first_result=0&result_per_page=50';

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

    return "/api/salesReport?store_id=$selectedStoreId$queryStrinng&del_agent_id=$selectedDeliveryAgentId&pay_method_id=$selectedPaymentMethodId&waiter_id=$selectedWaiterId&shift_id=$selectedShiftId&day_close_based=${isDayClosed == true ? 1 : 0}&cashier_id=$selectedCashierId&kiosk_id=$selectedKIOSK&group_by=${selectedGroupBy ?? 'month'}";
  }

  static String revenueReport(
    int pageFirstResult,
    //int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
  ) =>
      '/api/revenuereport?page_first_limit=$pageFirstResult&result_per_page=10&store_id=$storeId&from_date=$fromDate&to_date=$toDate&account_head_id=0';

  static String expenseReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    int account,
  ) =>
      "/api/expenseReport?page_first_limit=0&result_per_page=50&store_id=$storeId&from_date=$fromDate&to_date=$toDate&account_head_id=$account";
  static String account = '/api/account-heads?trans_type_id=2';

  static String status = '/api/orderstatus';

  static String orderList({int? orderId}) => '/api/productorder_v2/$orderId';
  static String newOrder = '/api/productorder/get';

  static String orderDetail(int orderId) => '/api/productorderitem/$orderId';

  static String profitLoss(int storeId, String fromDate, String toDate) =>
      "/api/profitLoss?store_id=$storeId&from_date=$fromDate&to_date=$toDate";

  static String deliveryCharge(
    int storeId,
    String fromDate,
    String toDate,
    int pageSize,
    int offset,
  ) =>
      "/api/delivery-charge/report?store_id=$storeId&from_date=$fromDate&to_date=$toDate&pagesize=10&offset=0";

  static String customersReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    int filterId,
  ) =>
      "/api/customerreport?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage&filter_id=$filterId";

  static String proudtcList(
    int storeId,
    int catId,
    String search,
    String barCode,
    int filterId,
    int pageFirstResult,
  ) =>
      '/api/product?query=&store_id=$storeId&category_id=$catId&filters=$filterId&product_qty=0&keyword=$search&bar_code=$barCode&page_first_result=$pageFirstResult&result_per_page=10';

  static String stockStatus = '/api/product-item-conditions';
  static String stockUpdate = '/api/bulk-stock-update';
  static String category(int storeId) => '/api/categories?store_id=$storeId';

  static String parcelCharge(
    int pageFirstLimit,
    int resultPerPage,
    String fromDate,
    String toDate,
    int storeId,
    int orderOptionId,
  ) =>
      '/api/parcel_charge/report?page_first_limit=0&result_per_page=50&store_id=$storeId&from_date=$fromDate&to_date=$toDate&order_option_id=$orderOptionId';
  static String orderOption(int storeId, int appTypeId) =>
      '/api/order_options?store_id=$storeId&app_type_id=0';

  static String categorySalesReport(
    int storeId,
    String fromDate,
    String toDate,
  ) =>
      '/api/category-sales?store_id=$storeId&from_date=$fromDate&to_date=$toDate';

  static String userShiftReport(
    int storeId,
    String fromDate,
    String toDate,
    int pageFirstResult,
    int resultPerPage,
  ) =>
      '/api/user_shift?store_id=18&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage';

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
      '/api/saleondeals?from_date=$fromDate&to_date=$toDate&store_id=$storeId&searchText=&page_first_result=0&result_per_page=50';
  static String purchaseReport({
    int? storeId,
    String? fromDate,
    String? toDate,
    int? pageFirstLimit,
    int? resultPerPage,
    int? purchaseType,
    int? supplierId,
  }) =>
      '/api/purchase_order?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_limit=0&result_per_page=50&purchase_type=$purchaseType&supplier_id=0';
  //purchase_order?store_id=5&from_date=2025-07-14&to_date=2025-07-14&page_first_limit=0&result_per_page=50&purchase_type=1&supplier_id=0
  static String taxReport(String fromDate, String toDate, int storeId) =>
      '/api/taxreport?from_date=$fromDate&to_date=$toDate&store_id=$storeId';

  static String topStores(int roleId, int userId) =>
      '/api/topallstores?role_id=$roleId&user_id=$userId';
  static String offers(int storeId) =>
      '/api/product_offer_type?store_id=$storeId';
  static String cheque(
    int storeId,
    String status,
    String searchText,
    String fromChequeIssueDate,
    String toChequeIssueDate,
    String fromChequeDate,
    String toChequeDate,
  ) =>
      '/api/cheque-tracks?store_id=$storeId&status=$status&searchtext=$searchText&from_cheque_issue_date=$fromChequeIssueDate&to_cheque_issue_date=$toChequeIssueDate&from_cheque_date=$fromChequeDate&to_cheque_date=$toChequeDate';

  static String chequeStatus() => '/api/cheque-statuses';

  static String messReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
    String query,
    int mealPlansId,
  ) =>
      '/api/mess?page_first_result=0&result_per_page=50&store_id=$storeId&from_date=$fromDate&to_date=$toDate&query=$query&meal_plans_id=$mealPlansId';

  static String categoryProduct(int storeId) =>
      '/api/category?Admin&store_id=$storeId';
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
      '/api/fastmovingpdt?role_id=$roleId&user_id=$userId&from_date=$fromDate&to_date=$toDate&page_first_result=0&result_per_page=50&store_id=$storeId&searchText=$searchText&category_id=$categoryId';

  static String graphRevenue() => '/api/graphforrevenue';

  static String supplierReport(int storeId, int admin, String query) =>
      '/api/suppliers?store_id=$storeId&Admin=$admin&query=$query';

  static String ordersGraph() => '/api/graphfororder';

  static String daySummary(int storeId, String toDate) =>
      '/api/day-summary?store_id=$storeId&date=$toDate';
  static String updateProduct(int productId) =>
      '/api/mobapp_productupdate/$productId';

  static String productOffers(
    String fromDate,
    String toDate,
    int storeId,
    int pageFirstResult,
    int resultPerPage,
    String search,
  ) =>
      '/api/product_offer?from_date=$fromDate&to_date=$toDate&store_id=$storeId&searchText=$search&page_first_result=0&result_per_page=50';

  static String getVariant(int productId) =>
      '/api/product_variantdetail/$productId';
  static String specialOffer(int storeId) =>
      '/api/product_offer_type?store_id=$storeId';
  static String editOffer(int prodOfferId) => '/api/product_offer/$prodOfferId';
  static String createOffer() => '/api/product_offer';

  static String getDeliveryAgent(int deliveryPartnerId, int storeId) =>
      '/api/delivery_agent?delivery_partner_id=$deliveryPartnerId&store_id=$storeId';
  static String getPaymethod() => '/api/payment_method';
  static String getWaiters(int storeId) =>
      '/api/store_users?store_id=$storeId&role_id=9';
  static String getKiosk(int storeId) => '/api/kiosk?store_id=$storeId';
  static String getCashier(int storeId) =>
      '/api/store_users?store_id=$storeId&cashier=1';
  // static String showReport(int storeId,int selectedMonth,int deliveryAgentId,int deliveryPartnerId,int paymethodId,int waiterId,int shift,int cashierId,int selctedKiosk,int groupby)=>'/api/salesReport?store_id=$storeId&duration=$selectedMonth%20months&del_agent_id=$deliveryAgentId&delivery_partner_id=$deliveryPartnerId&pay_method_id=$paymethodId&waiter_id=$waiterId&shift_id=$shift&day_close_based=0&cashier_id=$cashierId&kiosk_id=$selctedKiosk&group_by=$groupby';
  static String getProductName(String query, int storeId) =>
      '/api/product?query=$query&store_id=$storeId&page_first_result=0&result_per_page=30';

  static String searchOrder(
    int storeId,
    String search,
  ) =>
      '/api/order_search?order_number=$search&store_id=$storeId&page_first_result=0&result_per_page=30';
<<<<<<< HEAD

  static String customerSearch(int storeId,String custName)=> '/api/customerreport?store_id=$storeId&cust_name=$custName';



      
=======
>>>>>>> 918a2954afc6df3fecfc5139ec77a60288562a4c
}
