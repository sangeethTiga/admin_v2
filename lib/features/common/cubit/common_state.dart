part of 'common_cubit.dart';

class CommonState extends Equatable {
  final ApiFetchStatus? apiFetchStatus;
  final List<StoreResponse>? storeList;
  final StoreResponse? selectedStore;
  final ListOfDemo? selectDate;

  const CommonState({
    this.apiFetchStatus = ApiFetchStatus.idle,
    this.storeList,
    this.selectedStore,
    this.selectDate,
  });
  CommonState copyWith({
    ApiFetchStatus? apiFetchStatus,
    List<StoreResponse>? storeList,
    StoreResponse? selectedStore,
    ListOfDemo? selectDate,
  }) => CommonState(
    apiFetchStatus: apiFetchStatus ?? this.apiFetchStatus,
    storeList: storeList ?? this.storeList,
    selectedStore: selectedStore ?? this.selectedStore,
    selectDate: selectDate ?? this.selectDate,
  );

  @override
  List<Object?> get props => [
    apiFetchStatus,
    storeList,
    selectedStore,
    selectDate,
  ];
}

class InitialCommonState extends CommonState {}
