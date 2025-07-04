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
  final MostSellingResponse? selectedCategory;
  final PurchaseType? selectedPurchaseType;
  final ListOfDemo? selectMonth;
  final ListOfDemo? selectedShift;
  final List<DeliveryAgentResponse>? deliveryAgents;
  final int? selectedDeliveryPartner;
  final DeliveryAgentResponse? selectedDeliveryAgent;
  final List <PaymentMethodResponse>?paymethodList;
  final PaymentMethodResponse ? selectedPaymethod;
  final List<WaitersResponse>? waitersList;
  final WaitersResponse ?selectedWaiter;
  final List<KioskResponse>?kioskList;
  final KioskResponse? selectedKiosk;
  final List<CashierResponse>?cashierList;
  final CashierResponse?selectedCashier;
  final Dates? selectedGroupBy;
   final DateTime? fromDate;
  final DateTime? toDate;
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
    this.selectedCategory,
    this.selectedPurchaseType,
    this.selectMonth,
    this.deliveryAgents,
    this.selectedDeliveryPartner,
    this.selectedDeliveryAgent,
    this.paymethodList,
    this.selectedPaymethod,
    this.waitersList,
    this.selectedWaiter,
    this.kioskList,
    this.selectedKiosk,
    this.selectedShift,
    this.cashierList,
    this.selectedCashier,
    this.selectedGroupBy,
       this.fromDate,
    this.toDate,
  });

  DashboardState copyWith({
    List<RevenueResponse>? revenueReport,
    ApiFetchStatus? isRevenueGraph,
    List<OrdersGraphResponse>? ordersReport,

    ApiFetchStatus? isOrdersReport,
    ApiFetchStatus? apiFetchStatus,
    StoreResponse? selectedStore,
    ListOfDemo? selectDate,
    List<StoreResponse>? storeList,
    AccountDataResponse? selectedAccount,
    List<AccountDataResponse>? accountList,
    OptionResponse? selectedOption,
    MostSellingResponse? selectedProducts,
    PurchaseType? selectedPurchaseType,
    ListOfDemo? selectMonth,
    List<DeliveryAgentResponse>? deliveryAgents,

    int? selectedDeliveryPartner,
    DeliveryAgentResponse? selectedDeliveryAgent,
    List <PaymentMethodResponse>?paymethodList,
     PaymentMethodResponse ? selectedPaymethod,
     List<WaitersResponse>? waitersList,
     WaitersResponse ?selectedWaiter,
      List<KioskResponse>?kioskList,
      ListOfDemo? selectedShift,
  KioskResponse? selectedKiosk,
  List<CashierResponse> ?cashierList,
  CashierResponse?selectedCashier,
  Dates? selectedGroupBy,
   DateTime? fromDate,
    DateTime? toDate,
  }) {
    return DashboardState(
      isRevenueGraph: isRevenueGraph ?? this.isRevenueGraph,
      revenueReport: revenueReport ?? this.revenueReport,
      ordersReport: ordersReport ?? this.ordersReport,
      isOrdersReport: isOrdersReport ?? this.isOrdersReport,
      apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
      selectedStore: selectedStore ?? this.selectedStore,
      selectDate: selectDate ?? this.selectDate,
      storeList: storeList ?? this.storeList,
      selectedAccount: selectedAccount ?? this.selectedAccount,
      accountList: accountList ?? this.accountList,
      selectedOption: selectedOption ?? this.selectedOption,
      selectedCategory: selectedProducts ?? this.selectedCategory,
      selectedPurchaseType: selectedPurchaseType ?? this.selectedPurchaseType,
      selectMonth: selectMonth ?? this.selectMonth,
      deliveryAgents: deliveryAgents ?? this.deliveryAgents,
      selectedDeliveryPartner:
          selectedDeliveryPartner ?? this.selectedDeliveryPartner,
      selectedDeliveryAgent:
          selectedDeliveryAgent ?? this.selectedDeliveryAgent,
          paymethodList: paymethodList ?? this.paymethodList,
          selectedPaymethod: selectedPaymethod ?? this.selectedPaymethod,
          waitersList: waitersList ??this.waitersList,
          selectedWaiter: selectedWaiter ??this.selectedWaiter,
          kioskList: kioskList ?? this.kioskList,
          selectedKiosk: selectedKiosk ??this.selectedKiosk,
          selectedShift: selectedShift ??this.selectedShift,
          cashierList: cashierList??this.cashierList,
          selectedCashier: selectedCashier??this.selectedCashier,
          selectedGroupBy: selectedGroupBy ?? this.selectedGroupBy,
            fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
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
    selectedCategory,
    selectedPurchaseType,
    selectMonth,
    deliveryAgents,
    selectedDeliveryPartner,
    selectedDeliveryAgent,
    paymethodList,
    selectedPaymethod,
    waitersList,
    selectedWaiter,
    kioskList,
    selectedKiosk,
    selectedShift,
    cashierList,
    selectedCashier,
    selectedGroupBy,
     fromDate,
    toDate,
    
  ];
}

class InitialDashBoardState extends DashboardState {}
