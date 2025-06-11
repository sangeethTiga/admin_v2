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
  final List<CustomersResponse>? customersReport;
  final ApiFetchStatus? isCustomersReport;
  final ApiFetchStatus? isCategorySales;
  final List<CategorySalesResponse>? categorySales;
  final List<ParcelChargeResponse>? parcelChargeList;
  final ApiFetchStatus? isParcelCharge;
  final List<UserShiftReportResponse>? userShiftReport;
  final ApiFetchStatus? isUserShiftReport;
  final TaxResponse? taxReport;
  final ApiFetchStatus? isTaxReport;
  final List<TopstoresResponse>? topStores;
  final ApiFetchStatus? isTopStores;

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
    this.offset = 0,
    this.page = 0,
    this.customersReport,
    this.isCustomersReport,
    this.isCategorySales,
    this.categorySales,
    this.isParcelCharge,
    this.parcelChargeList,
    this.userShiftReport,
    this.isUserShiftReport,
    this.isTaxReport,
    this.taxReport,
    this.topStores,
    this.isTopStores
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
    int? page,
    List<CustomersResponse>? customersReport,
    ApiFetchStatus? isCustomersReport,
    ApiFetchStatus? isCategorySales,
    List<CategorySalesResponse>? categorySales,
    List<ParcelChargeResponse>? parcelChargeList,
    ApiFetchStatus? isParcelCharge,
    List<UserShiftReportResponse>? userShiftReport,
    ApiFetchStatus? isUserShiftReport,
    TaxResponse? taxReport,
    ApiFetchStatus? isTaxReport,
    List<TopstoresResponse>? topStores,
    ApiFetchStatus? isTopStores
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
      offset: offset ?? this.offset,
      customersReport: customersReport ?? this.customersReport,
      isCustomersReport: isCustomersReport ?? this.isCustomersReport,
      isCategorySales: isCategorySales ?? this.isCategorySales,
      categorySales: categorySales ?? this.categorySales,
      isParcelCharge: isParcelCharge ?? this.isParcelCharge,
      parcelChargeList: parcelChargeList ?? this.parcelChargeList,
      userShiftReport: userShiftReport ?? this.userShiftReport,
      isUserShiftReport: isUserShiftReport ?? this.isUserShiftReport,
      taxReport: taxReport ?? this.taxReport,
      isTaxReport: isTaxReport ?? this.isTaxReport,
      topStores: topStores?? this.topStores,
      isTopStores: isTopStores ?? this.isTopStores
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
    offset,
    customersReport,
    isCustomersReport,
    isCategorySales,
    categorySales,
    isParcelCharge,
    parcelChargeList,

    userShiftReport,
    isUserShiftReport,
    taxReport,
    isTaxReport,
    isTopStores,
    topStores
  ];
}

class InitialReportState extends ReportState {}
