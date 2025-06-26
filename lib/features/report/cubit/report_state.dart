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
  final String status;
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
  final List<PurchaseResponse>? purchaseReport;
  final ApiFetchStatus? isPurchaseReport;
  final List<SaleOnDeals>? salesDealsReport;
  final ApiFetchStatus? isSalesDealsReport;
  final List<OffersResponse>? offerReport;
  final ApiFetchStatus? isOffersReport;
  // final List<OfferTypeResponse>? offerTypeList;
  final ApiFetchStatus? isOfferTypeList;
  final List<ChequeTrans>? chequeTransReport;
  final ApiFetchStatus? isChequeReport;
  final List<ChequestatusResponse>? chequeStatus;
  final ApiFetchStatus? isChequeStatus;
  final ChequestatusResponse? selectedStatus;
  final ApiFetchStatus? apiFetchStatus;
  final List<MessReportResponse>? messReport;
  final ApiFetchStatus? isMessReport;
  final List<ProductOffersResponse>? productOffers;
  final ApiFetchStatus? isProductOffers;
  final List<ProductOffersResponse>? filteredProducts;
  final List<SuppliersResponse>? suppliersReport;
  final ApiFetchStatus? isSupplierReport;
  final PurchaseType? selectedPurchaseType;
  final List<ProductsResponse>? productsReport;
  final ApiFetchStatus? isProductReport;
  final List<DaySummaryResponse>? daySummary;
  final ApiFetchStatus? isDaySummary;
  final List<AmountByDelivertBoy>? amountByDelivertBoy;
  final List<AmountByDevice>? amountByDevice;
  final List<BillTypeDetail>? billTypeDetail;
  final List<DeliveryPartner>? deliveryPartner;
  final List<PurchaseType>? purchaseType;
  final List<OffertypeResponse>? offerType;
  final ApiFetchStatus? isOfferType;
  final OffertypeResponse? selectedType;

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
    this.userShiftReport,
    this.isUserShiftReport,
    this.purchaseReport,
    this.isPurchaseReport,
    this.isParcelCharge,
    this.parcelChargeList,
    this.status = '',
    this.isTaxReport,
    this.taxReport,
    this.topStores,
    this.isTopStores,
    this.offerReport,
    this.isOffersReport = ApiFetchStatus.idle,
    this.salesDealsReport,
    this.isSalesDealsReport = ApiFetchStatus.idle,
    this.isOfferTypeList = ApiFetchStatus.idle,
    this.chequeTransReport,
    this.isChequeReport,
    this.chequeStatus,
    this.isChequeStatus,
    this.selectedStatus,
    this.apiFetchStatus,
    this.isMessReport = ApiFetchStatus.idle,
    this.messReport,
    this.isProductOffers = ApiFetchStatus.idle,
    this.productOffers,
    this.suppliersReport,
    this.isSupplierReport,
    this.productsReport,
    this.isProductReport,
    this.daySummary,
    this.isDaySummary,
    this.amountByDelivertBoy,
    this.amountByDevice,
    this.billTypeDetail,
    this.deliveryPartner,
    this.purchaseType,
    this.filteredProducts,

    //       this.purchaseType,
    this.selectedPurchaseType,
    this.offerType,
    this.isOfferType,
    this.selectedType
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
    String? status,
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
    ApiFetchStatus? isTopStores,
    List<PurchaseResponse>? purchaseReport,
    ApiFetchStatus? isPurchaseReport,
    ApiFetchStatus? isOffersReport,

    ApiFetchStatus? isOfferTypeList,
    List<OffersResponse>? offerReport,
    List<SaleOnDeals>? salesDealsReport,
    List<ChequeTrans>? chequeTransReport,
    ApiFetchStatus? isChequeReport,
    List<ChequestatusResponse>? chequeStatus,
    ApiFetchStatus? isChequeStatus,
    ChequestatusResponse? selectedStatus,
    ApiFetchStatus? apiFetchStatus,
    List<MessReportResponse>? messReport,

    ApiFetchStatus? isMessReport,
    List<ProductOffersResponse>? productOffers,
    ApiFetchStatus? isProductOffers,
    List<ProductOffersResponse>? filteredProducts,
    List<SuppliersResponse>? suppliersReport,
    ApiFetchStatus? isSupplierReport,
    List<ProductsResponse>? productsReport,
    ApiFetchStatus? isProductReport,
    //     List<PurchaseType>? purchaseType,
    PurchaseType? selectedPurchaseType,
    List<DaySummaryResponse>? daySummary,
    ApiFetchStatus? isDaySummary,
    List<AmountByDelivertBoy>? amountByDelivertBoy,
    List<AmountByDevice>? amountByDevice,
    List<BillTypeDetail>? billTypeDetail,
    List<DeliveryPartner>? deliveryPartner,
    List<PurchaseType>? purchaseType,
    List<OffertypeResponse>? offerType,
    ApiFetchStatus? isOfferType,
    OffertypeResponse? selectedType,
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
      deliverychargeReport: deliverychargeResponse ?? deliverychargeReport,
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
      topStores: topStores ?? this.topStores,
      isTopStores: isTopStores ?? this.isTopStores,
      purchaseReport: purchaseReport ?? this.purchaseReport,
      isPurchaseReport: isPurchaseReport ?? this.isPurchaseReport,
      offerReport: offerReport ?? this.offerReport,
      isOffersReport: isOffersReport ?? this.isOffersReport,
      isOfferTypeList: isOfferTypeList ?? this.isOfferTypeList,
      salesDealsReport: salesDealsReport ?? this.salesDealsReport,
      isSalesDealsReport: isSalesDealsReport ?? isSalesDealsReport,
      chequeTransReport: chequeTransReport ?? this.chequeTransReport,
      isChequeReport: isChequeReport ?? this.isChequeReport,
      chequeStatus: chequeStatus ?? this.chequeStatus,
      isChequeStatus: isChequeStatus ?? this.isChequeStatus,
      selectedStatus: selectedStatus ?? this.selectedStatus,
      apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
      status: status ?? this.status,
      messReport: messReport ?? this.messReport,
      isMessReport: isMessReport ?? this.isMessReport,
      productOffers: productOffers ?? this.productOffers,
      isProductOffers: isProductOffers ?? this.isProductOffers,
      filteredProducts: filteredProducts ?? this.filteredProducts,
      isSupplierReport: isSupplierReport ?? this.isSupplierReport,
      suppliersReport: suppliersReport ?? this.suppliersReport,
      //   purchaseType: purchaseType ?? this.purchaseType,
      selectedPurchaseType: selectedPurchaseType ?? selectedPurchaseType,

      isProductReport: isProductReport ?? this.isProductReport,
      productsReport: productsReport ?? this.productsReport,
      daySummary: daySummary ?? this.daySummary,
      isDaySummary: isDaySummary ?? this.isDaySummary,
      amountByDelivertBoy: amountByDelivertBoy ?? this.amountByDelivertBoy,
      amountByDevice: amountByDevice ?? this.amountByDevice,
      billTypeDetail: billTypeDetail ?? this.billTypeDetail,
      deliveryPartner: deliveryPartner ?? this.deliveryPartner,
      purchaseType: purchaseType ?? this.purchaseType,
      offerType: offerType ?? this.offerType,

      isOfferType: isOfferType ?? this.isOfferType,
      selectedType: selectedType ?? this.selectedType,
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
    status,
    customersReport,
    isCustomersReport,
    isCategorySales,
    categorySales,
    isParcelCharge,
    parcelChargeList,
    offerReport,
    userShiftReport,
    isUserShiftReport,
    taxReport,
    isTaxReport,
    isTopStores,
    topStores,
    purchaseReport,
    isPurchaseReport,
    isOffersReport,
    isOfferTypeList,
    salesDealsReport,
    isSalesDealsReport,
    chequeTransReport,
    isChequeReport,
    isChequeStatus,
    chequeStatus,
    selectedStatus,
    apiFetchStatus,
    messReport,
    isMessReport,
    productOffers,
    isProductOffers,
    suppliersReport,
    isSupplierReport,
    selectedPurchaseType,
    productsReport,
    isProductReport,
    amountByDelivertBoy,
    amountByDevice,
    billTypeDetail,
    deliveryPartner,
    purchaseType,
    filteredProducts,
    offerType,
    isOfferType,
    selectedType 
  ];
}

class InitialReportState extends ReportState {}
