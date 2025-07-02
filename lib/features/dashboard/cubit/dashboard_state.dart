part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<RevenueResponse>? revenueReport;
  final ApiFetchStatus? isRevenueGraph;
  final List<OrdersGraphResponse>? ordersReport;
  final ApiFetchStatus? isOrdersReport;
  final StoreResponse? selectedStore;
    final ListOfDemo? selectDate;
      final List<StoreResponse>? storeList;
      final AccountDataResponse? selectedAccount;
      final List<AccountDataResponse>? accountList;
      final OptionResponse? selectedOption;
      final MostSellingResponse? selectedProducts;
      final PurchaseType? selectedPurchaseType;




  const DashboardState({
    this.isRevenueGraph,
    this.revenueReport,
    this.ordersReport,
    this.isOrdersReport,
    this.apiFetchStatus,
    this.selectedStore,
    this.selectDate,
    this.storeList,
    this.selectedAccount,
    this.accountList,
    this.selectedOption,
    this.selectedProducts,
    this.selectedPurchaseType,
  });

  DashboardState copyWith({
    List<RevenueResponse>? revenueReport,
    final ApiFetchStatus? isRevenueGraph,
     List<OrdersGraphResponse>? ordersReport,

    final ApiFetchStatus? isOrdersReport,
    final ApiFetchStatus? apiFetchStatus,
        StoreResponse? selectedStore,
          final ListOfDemo? selectDate,
   List<StoreResponse>? storeList,
 AccountDataResponse? selectedAccount,
    List<AccountDataResponse>? accountList,
    OptionResponse? selectedOption,
    MostSellingResponse? selectedProducts,
    PurchaseType? selectedPurchaseType,




  }) {
    return DashboardState(
      isRevenueGraph: isRevenueGraph ?? this.isRevenueGraph,
      revenueReport: revenueReport ?? this.revenueReport,
      ordersReport: ordersReport ?? this.ordersReport,
      isOrdersReport: isOrdersReport ?? this.isOrdersReport,
      apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
      selectedStore: selectedStore??this.selectedStore,
      selectDate: selectDate??this.selectDate,
      storeList: storeList ?? this.storeList, 
      selectedAccount: selectedAccount ?? this.selectedAccount,
      accountList: accountList ?? this.accountList,
      selectedOption: selectedOption ?? this.selectedOption,
      selectedProducts: selectedProducts ?? this.selectedProducts,
      selectedPurchaseType: selectedPurchaseType ?? this.selectedPurchaseType,
    );
  }

  @override
  List<Object?> get props => [
    revenueReport,
    isRevenueGraph,
    ordersReport,
    isOrdersReport,
    apiFetchStatus,
    selectedStore,
    selectDate,
    storeList,
    selectedAccount,
    accountList,
    selectedOption,
    selectedProducts,
    selectedPurchaseType,
  ];
}

class InitialDashBoardState extends DashboardState {}
