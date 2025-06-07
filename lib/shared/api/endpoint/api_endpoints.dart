class ApiEndpoints {
  ApiEndpoints._();
  static String commonSign = 'https://cab.resto.qa/api/get-admin-api';
  static String store(int custId) =>
      '/api/store?user_id=$custId&page_first_result=0&result_per_page=50';
}
