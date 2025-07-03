part of 'common_cubit.dart';
class CommonState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
 // final List<StoreResponse>? storeList;
  // final StoreResponse? selectedStore;
  final ListOfDemo? selectDate;
  final List<AccountDataResponse>? accountList;
  
  final List<OptionResponse>? optionList;
  final OptionResponse? selectedOption;
  final List<PurchaseType>? purchaseType;
  final PurchaseType? selectedPurchaseType;
  final List<MostSellingResponse>? sellingProductsReport;
  final ApiFetchStatus? isMostSelling;
  final MostSellingResponse? selectedProducts;
  final ApiFetchStatus? isChequeStatus;
  final int? currentPage;
  final StoreResponse? storeForProfitloss;

  const CommonState({
    this.apiFetchStatus = ApiFetchStatus.idle,
   // this.storeList,
    // this.selectedStore,
    this.selectDate,
    this.accountList,
   
    this.selectedOption,
    this.optionList,
    this.purchaseType,
    this.selectedPurchaseType,
    this.isMostSelling,
    this.sellingProductsReport,
    this.selectedProducts,
    this.isChequeStatus,
    this.currentPage,
    this.storeForProfitloss
  });
  CommonState copyWith({
    ApiFetchStatus? apiFetchStatus,
    List<StoreResponse>? storeList,
    StoreResponse? selectedStore,
    StoreResponse? storeForProfitloss,
    ListOfDemo? selectDate,
    List<AccountDataResponse>? accountList,
    AccountDataResponse? selectedAccount,
    List<OptionResponse>? optionList,
    OptionResponse? selectedOption,
    List<PurchaseType>? purchaseType,
    PurchaseType? selectedPurchaseType,
    List<MostSellingResponse>? sellingProductsReport,
    ApiFetchStatus? isMostSelling,
    MostSellingResponse? selectedProducts,
    ApiFetchStatus? isChequeStatus,
    int? currentPage,
  }) => CommonState(
    apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    // storeList: storeList ?? this.storeList,
    // selectedStore: selectedStore ?? this.selectedStore,
    selectDate: selectDate ?? this.selectDate,
    accountList: accountList ?? this.accountList,
   
    optionList: optionList ?? this.optionList,
    selectedOption: selectedOption ?? this.selectedOption,
    purchaseType: purchaseType ?? this.purchaseType,
    selectedPurchaseType: selectedPurchaseType ?? selectedPurchaseType,
    sellingProductsReport: sellingProductsReport ?? this.sellingProductsReport,
    isMostSelling: isMostSelling ?? this.isMostSelling,
    selectedProducts: selectedProducts ?? this.selectedProducts,
    isChequeStatus: isChequeStatus ?? this.isChequeStatus,
    currentPage: currentPage ?? this.currentPage,
    storeForProfitloss: storeForProfitloss ?? this.storeForProfitloss
  );

  @override
  List<Object?> get props => [
    apiFetchStatus,
    // storeList,
    // selectedStore,
    selectDate,
    accountList,
   
    optionList,
    selectedOption,
    purchaseType,
    sellingProductsReport,
    isMostSelling,
    selectedProducts,
    isChequeStatus,
    currentPage,  
    storeForProfitloss
  ];
}

class InitialCommonState extends CommonState {}
