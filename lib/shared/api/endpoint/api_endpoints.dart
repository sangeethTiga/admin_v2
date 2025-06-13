class ApiEndpoints {
  ApiEndpoints._();
  static String commonSign = 'https://cab.resto.qa/api/get-admin-api';
  static String store(int custId) =>
      '/api/store?user_id=$custId&page_first_result=0&result_per_page=50';

  static String salesReport({
    int? selectedStoreId,
    String? selectedDeliveryPartner,
    String? selectedPaymentMethods,
    String? selectedWaites,
    String? selectedShifts,
    bool? isDayClosed,
    String? selectedCashe,
    String? selectedKIOS,
    String? selectedGroupBy,
    String? tempFromDate,
    String? toDate,
    String? selectedDuration,
  }) {
    var queryStrinng = '';
    if (tempFromDate != null && toDate != null) {
      queryStrinng = '&from_date=$tempFromDate&to_date=$toDate';
    } else {
      queryStrinng = '&duration=$selectedDuration';
    }

    return "/api/salesReport?store_id=$selectedStoreId$queryStrinng&del_agent_id=$selectedDeliveryPartner&delivery_partner_id=$selectedDeliveryPartner&pay_method_id=$selectedPaymentMethods&waiter_id=$selectedWaites&shift_id=$selectedShifts&day_close_based=${isDayClosed == true ? 1 : 0}&cashier_id=$selectedCashe&kiosk_id=$selectedKIOS&group_by=${selectedGroupBy ?? 'month'}";
  }

  static String revenueReport(
    int pageFirstResult,
    int resultPerPage,
    int storeId,
    String fromDate,
    String toDate,
  ) =>
      '/api/revenuereport?page_first_limit=$pageFirstResult&result_per_page=100&store_id=$storeId&from_date=$fromDate&to_date=$toDate&account_head_id=0';

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

  static String orderList = '/api/productorder/get';

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

  static String proudtcList(int storeId, int catId) =>
      '/api/product?query=&store_id=$storeId&category_id=$catId&filters=0&product_qty=0&page_first_result=0&result_per_page=50';

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
      '/api/parcel_charge/report?page_first_limit=$pageFirstLimit&result_per_page=$resultPerPage&store_id=$storeId&from_date=$fromDate&to_date=$toDate&order_option_id=$orderOptionId';
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
      '/api/user_shift?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_result=$pageFirstResult&result_per_page=$resultPerPage';

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
      '/api/product_offer?from_date=$fromDate&to_date=$toDate&store_id=$storeId&searchText=&page_first_result=0&result_per_page=50';
  static String purchaseReport(
    int storeId,
    String fromDate,
    String toDate,
    int pageFirstLimit,
    int resultPerPage,
    int purchaseType,
    int supplierId,
  ) =>
      '/api/purchase_order?store_id=$storeId&from_date=$fromDate&to_date=$toDate&page_first_limit=$pageFirstLimit&result_per_page=$resultPerPage&purchase_type=$purchaseType&supplier_id=$supplierId';
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

  static String chequeStatus(
    int storeId,
    String status,

    String fromChequeIssueDate,
    String toChequeIssueDate,
    String fromChequeDate,
    String toChequeDate,
  ) => '/api/cheque-statuses';

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

  static String sellingProducts(int storeId) =>
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
      '/api/fastmovingpdt?role_id=$roleId&user_id=$userId&from_date=$fromDate&to_date=$toDate&page_first_result=0&result_per_page=20&store_id=$storeId&searchText=$searchText&category_id=$categoryId';

  static String graphRevenue() => '/api/graphforrevenue';
}
