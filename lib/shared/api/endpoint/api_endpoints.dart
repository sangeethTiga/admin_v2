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
}
