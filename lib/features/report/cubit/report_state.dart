part of 'report_cubit.dart';

class ReportState extends Equatable {
  final List<SalesReportResponse>? salesReport;
  final ApiFetchStatus? isSaleReport;
  final DateTime? fromDate;
  final DateTime? toDate;
  final ListOfDemo? selectedMethod;
  final List<ReveneReportResponse>? revenueReport;
  final List<ExpenseReportResponse>? expenseReport;
  final List<ProfitlossResponse>? profitlossReport;
  final int currentPage;
  final int pageSize;
  final List<CustomersResponse>? customersReport;
  final ApiFetchStatus? isCustomersReport;
  final ApiFetchStatus? isCategorySales;
  final List<CategorySalesResponse>? categorySales;

  const ReportState({
    this.salesReport,
    this.isSaleReport,
    this.fromDate,
    this.toDate,
    this.selectedMethod,
    this.revenueReport,
    this.currentPage = 0,
    this.pageSize = 20,
    this.expenseReport,
    this.profitlossReport,
    this.customersReport,
    this.isCustomersReport,
    this.isCategorySales,
    this.categorySales,
  });

  ReportState copyWith({
    List<SalesReportResponse>? salesReport,
    ApiFetchStatus? isSaleReport,
    DateTime? fromDate,
    DateTime? toDate,
    ListOfDemo? selectedMethod,
    List<ReveneReportResponse>? revenueReport,
    int? currentPage,
    int? pageSize,
    List<ExpenseReportResponse>? expenseReport,
    List<ProfitlossResponse>? profitlossReport,
    List<CustomersResponse>? customersReport,
    ApiFetchStatus? isCustomersReport,
    ApiFetchStatus? isCategorySales,
    List<CategorySalesResponse>? categorySales,
  }) {
    return ReportState(
      salesReport: salesReport ?? this.salesReport,
      isSaleReport: isSaleReport ?? this.isSaleReport,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      selectedMethod: selectedMethod ?? this.selectedMethod,
      revenueReport: revenueReport ?? this.revenueReport,
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
      expenseReport: expenseReport ?? this.expenseReport,
      profitlossReport: profitlossReport ?? this.profitlossReport,
      customersReport: customersReport ?? this.customersReport,
      isCustomersReport: isCustomersReport ?? this.isCustomersReport,
      isCategorySales: isCategorySales ?? this.isCategorySales,
      categorySales: categorySales ?? this.categorySales,
    );
  }

  @override
  List<Object?> get props => [
    salesReport,
    isSaleReport,
    fromDate,
    toDate,
    selectedMethod,
    revenueReport,
    currentPage,
    pageSize,
    expenseReport,
    profitlossReport,
    customersReport,
    isCustomersReport,
    isCategorySales,
    categorySales,
  ];
}

class InitialReportState extends ReportState {}
