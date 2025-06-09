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
  final List<DeliveryChargeResponse>? deliverychargeReport;
  final ApiFetchStatus? isDeliverychargeReport;
  final int currentPage;
  final int pageSize;
  final int offset;
  final int page;

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
    this.deliverychargeReport,
    this.isDeliverychargeReport,
    this.offset=0,
    this.page=0
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
    List<DeliveryChargeResponse>? deliverychargeResponse,
    ApiFetchStatus? isDeliverychargeReport,
    int? offset,
    int? page
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
      deliverychargeReport: deliverychargeResponse ?? this.deliverychargeReport,
      isDeliverychargeReport:
          isDeliverychargeReport ?? this.isDeliverychargeReport,
          page: page ?? this.page,
          offset: offset?? this.offset
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
    deliverychargeReport,
    isDeliverychargeReport,
    page,
    offset
  ];
}

class InitialReportState extends ReportState {}
