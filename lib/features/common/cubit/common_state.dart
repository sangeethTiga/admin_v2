part of 'common_cubit.dart';

class CommonState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<StoreResponse>? storeList;
  final StoreResponse? selectedStore;
  final ListOfDemo? selectDate;
  final List<AccountDataResponse>? accountList;
  final AccountDataResponse? selectedAccount;

  const CommonState({
    this.apiFetchStatus = ApiFetchStatus.idle,
    this.storeList,
    this.selectedStore,
    this.selectDate,
    this.accountList,
    this.selectedAccount,
  });
  CommonState copyWith({
    ApiFetchStatus? apiFetchStatus,
    List<StoreResponse>? storeList,
    StoreResponse? selectedStore,
    ListOfDemo? selectDate,
    List<AccountDataResponse>? accountList,
    AccountDataResponse? selectedAccount,
  }) => CommonState(
    apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    storeList: storeList ?? this.storeList,
    selectedStore: selectedStore ?? this.selectedStore,
    selectDate: selectDate ?? this.selectDate,
    accountList: accountList ?? this.accountList,
    selectedAccount: selectedAccount ?? this.selectedAccount,
  );

  @override
  List<Object?> get props => [
    apiFetchStatus,
    storeList,
    selectedStore,
    selectDate,
    accountList,
    selectedAccount,
  ];
}

class InitialCommonState extends CommonState {}
