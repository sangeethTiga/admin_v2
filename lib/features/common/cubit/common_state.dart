part of 'common_cubit.dart';

class CommonState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<StoreResponse>? storeList;
  final StoreResponse? selectedStore;
  final ListOfDemo? selectDate;
  final List<AccountDataResponse>? accountList;
  final AccountDataResponse? selectedAccount;
  final List<OptionResponse>? optionList;
  final OptionResponse? selectedOption;
  final List<PurchaseType>? purchaseType;
final PurchaseType? selectedPurchaseType;
    final List<MostSellingResponse>? sellingProductsReport;
  final ApiFetchStatus? isMostSelling;
  final MostSellingResponse? selectedProducts;

  const CommonState({
    this.apiFetchStatus = ApiFetchStatus.idle,
    this.storeList,
    this.selectedStore,
    this.selectDate,
    this.accountList,
    this.selectedAccount,
    this.selectedOption,
    this.optionList,
    this.purchaseType,
    this.selectedPurchaseType,
     this.isMostSelling,
    this.sellingProductsReport,
    this.selectedProducts,
  });
  CommonState copyWith({
    ApiFetchStatus? apiFetchStatus,
    List<StoreResponse>? storeList,
    StoreResponse? selectedStore,
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
  }) => CommonState(
    apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    storeList: storeList ?? this.storeList,
    selectedStore: selectedStore ?? this.selectedStore,
    selectDate: selectDate ?? this.selectDate,
    accountList: accountList ?? this.accountList,
    selectedAccount: selectedAccount ?? this.selectedAccount,
    optionList: optionList ?? this.optionList,
    selectedOption: selectedOption ?? this.selectedOption,
    purchaseType: purchaseType ?? this.purchaseType,
    selectedPurchaseType: selectedPurchaseType ?? selectedPurchaseType,
      sellingProductsReport:
          sellingProductsReport ?? this.sellingProductsReport,
      isMostSelling: isMostSelling ?? this.isMostSelling,
      selectedProducts: selectedProducts ?? this.selectedProducts,
  );

  @override
  List<Object?> get props => [
    apiFetchStatus,
    storeList,
    selectedStore,
    selectDate,
    accountList,
    selectedAccount,
    optionList,
    selectedOption,
    purchaseType,
    selectedPurchaseType,
    sellingProductsReport,
    isMostSelling,
    selectedProducts,
  ];
}

class InitialCommonState extends CommonState {}
