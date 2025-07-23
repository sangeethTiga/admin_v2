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
  final String option;
  final String lastSearch;
  final String query;
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
  final List<ChequeStatusResponse>? chequeStatus;
  final ApiFetchStatus? isChequeStatus;
  final ChequeStatusResponse? selectedStatus;
  final ApiFetchStatus? apiFetchStatus;
  final List<MessReportResponse>? messReport;
  final ApiFetchStatus? isMessReport;
  final List<ProductOffersResponse>? productOffers;
  final ApiFetchStatus? isProductOffers;
  final List<ProductOffersResponse>? filteredProducts;
  final List<SuppliersResponse>? filteredProduct;
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
  final List<SpecialOfferResponse>? specialOffer;
  final ApiFetchStatus? isSpecialOffer;
  final SpecialOfferResponse? selectedType;
  final List<CreateOfferResponse>? createOffer;
  final EditOfferResponse? editData;
  final ApiFetchStatus? isAdded;
  final ApiFetchStatus? isCreated;
  final CreateOfferResponse? createData;
  final MostSellingResponse? selectCategory;
  final List<ProductNameResponse>? getProductName;
  final ApiFetchStatus? isProductName;
  final ProductNameResponse? selectedProductName;
  final ProductNameResponse? selectedProductPrice;
  final bool? hasMoreData;
  final bool? isLoadingMore;
  final int? totalItems;
  final int? lastStoreId;
  final StoreResponse? selectedStore;
  final OptionResponse? selectedOption;
  final List<CustomerSearchResponse>? custSearchList;
  final ApiFetchStatus? isLoading;
  final DateTime? selectedOfferDate;
  final TimeOfDay? selectedOfferTime;
  final DateTime? selectedOfferToDate;
  final TimeOfDay? selectedOfferToTime;
  final ApiFetchStatus? isOfferEdit;

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
    this.lastSearch = '',
    this.query = '',
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
    this.createOffer,
    this.selectCategory,
    this.selectedProductName,
    this.filteredProduct,
    this.isOfferEdit = ApiFetchStatus.idle,

    //this.purchaseType,
    this.selectedPurchaseType,
    this.specialOffer,
    this.isSpecialOffer,
    this.selectedType,
    this.editData,
    this.isAdded,
    this.isCreated,
    this.createData,
    this.option = '',
    this.getProductName,
    this.isProductName,
    this.selectedProductPrice,
    this.hasMoreData,
    this.isLoadingMore,
    this.lastStoreId,
    this.selectedStore,
    this.totalItems,
    this.selectedOption,
    this.custSearchList,
    this.isLoading,
    this.selectedOfferDate,
    this.selectedOfferTime,
    this.selectedOfferToDate,
    this.selectedOfferToTime,
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
    List<DeliveryChargeResponse>? deliverychargeReport,
    ApiFetchStatus? isDeliverychargeReport,
    int? offset,
    int? page,
    String? status,
    String? option,
    String? lastSearch,
    String? query,
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
    ApiFetchStatus? isSalesDealsReport,

    List<ChequeTrans>? chequeTransReport,
    ApiFetchStatus? isChequeReport,
    List<ChequeStatusResponse>? chequeStatus,
    ApiFetchStatus? isChequeStatus,
    ChequeStatusResponse? selectedStatus,
    ApiFetchStatus? apiFetchStatus,
    List<MessReportResponse>? messReport,

    ApiFetchStatus? isMessReport,
    List<ProductOffersResponse>? productOffers,
    ApiFetchStatus? isProductOffers,
    List<ProductOffersResponse>? filteredProducts,
    List<SuppliersResponse>? filteredProduct,
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
    List<SpecialOfferResponse>? specialOffer,
    ApiFetchStatus? isSpecialOffer,
    SpecialOfferResponse? selectedType,
    List<CreateOfferResponse>? createOffer,
    EditOfferResponse? editData,
    ApiFetchStatus? isAdded,
    ApiFetchStatus? isCreated,
    CreateOfferResponse? createData,
    MostSellingResponse? selectCategory,
    List<ProductNameResponse>? getProductName,
    ApiFetchStatus? isProductName,
    ProductNameResponse? selectedProductName,
    ProductNameResponse? selectedProductPrice,
    bool? hasMoreData,
    bool? isLoadingMore,
    int? totalItems,
    StoreResponse? selectedStore,
    OptionResponse? selectedOption,
    List<CustomerSearchResponse>? custSearchList,
    ApiFetchStatus? isLoading,

    DateTime? selectedOfferDate,
    TimeOfDay? selectedOfferTime,
    DateTime? selectedOfferToDate,
    TimeOfDay? selectedOfferToTime,
    ApiFetchStatus? isOfferEdit,
    bool? isMakeItNull = false,
  }) {
    return ReportState(
      salesReport: salesReport ?? this.salesReport,
      isSaleReport: isSaleReport ?? this.isSaleReport,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      selectedMethod: selectedMethod ?? this.selectedMethod,
      revenueReport: revenueReport ?? this.revenueReport,
      currentPage: currentPage ?? this.currentPage,
      lastSearch: lastSearch ?? this.lastSearch,
      query: query ?? this.query,
      pageSize: pageSize ?? this.pageSize,
      expenseReport: expenseReport ?? this.expenseReport,
      profitlossReport: profitlossReport ?? this.profitlossReport,
      deliverychargeReport: deliverychargeReport ?? this.deliverychargeReport,
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
      selectedPurchaseType: selectedPurchaseType ?? this.selectedPurchaseType,
      isProductReport: isProductReport ?? this.isProductReport,
      productsReport: productsReport ?? this.productsReport,
      daySummary: daySummary ?? this.daySummary,
      isDaySummary: isDaySummary ?? this.isDaySummary,
      amountByDelivertBoy: amountByDelivertBoy ?? this.amountByDelivertBoy,
      amountByDevice: amountByDevice ?? this.amountByDevice,
      billTypeDetail: billTypeDetail ?? this.billTypeDetail,
      deliveryPartner: deliveryPartner ?? this.deliveryPartner,
      purchaseType: purchaseType ?? this.purchaseType,
      specialOffer: specialOffer ?? this.specialOffer,
      isSpecialOffer: isSpecialOffer ?? this.isSpecialOffer,
      selectedType: selectedType ?? this.selectedType,
      createOffer: createOffer ?? this.createOffer,
      editData: editData ?? this.editData,
      isAdded: isAdded ?? this.isAdded,
      isCreated: isCreated ?? this.isCreated,
      createData: createData ?? this.createData,
      selectCategory: selectCategory ?? this.selectCategory,
      getProductName: getProductName ?? this.getProductName,
      isProductName: isProductName ?? this.isProductName,
      selectedProductName: isMakeItNull == true
          ? null
          : selectedProductName ?? this.selectedProductName,
      selectedProductPrice: selectedProductPrice ?? this.selectedProductPrice,
      hasMoreData: hasMoreData ?? this.hasMoreData,
      totalItems: totalItems ?? this.totalItems,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      selectedStore: selectedStore ?? this.selectedStore,
      filteredProduct: filteredProduct ?? this.filteredProduct,
      selectedOption: selectedOption ?? this.selectedOption,
      custSearchList: custSearchList ?? this.custSearchList,
      isLoading: isLoading ?? this.isLoading,
      selectedOfferDate: selectedOfferDate ?? this.selectedOfferDate,
      selectedOfferTime: selectedOfferTime ?? this.selectedOfferTime,
      selectedOfferToDate: selectedOfferToDate ?? this.selectedOfferToDate,
      selectedOfferToTime: selectedOfferToTime ?? this.selectedOfferToTime,
      isOfferEdit: isOfferEdit ?? this.isOfferEdit,
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
    lastSearch,
    query,
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
    specialOffer,
    isSpecialOffer,
    selectedType,
    createOffer,
    editData,
    isAdded,
    isCreated,
    createData,
    selectCategory,
    getProductName,
    isProductName,
    selectedProductName,
    selectedProductPrice,
    hasMoreData,
    isLoadingMore,
    totalItems,
    selectedStore,
    daySummary,
    selectedOption,
    custSearchList,
    isLoading,
    selectedOfferDate,
    selectedOfferTime,
    selectedOfferToTime,
    selectedOfferToDate,
    isOfferEdit,
  ];
}

class InitialReportState extends ReportState {}
