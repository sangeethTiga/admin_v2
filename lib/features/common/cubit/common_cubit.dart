import 'package:admin_v2/features/common/domain/models/account/account_response.dart';
import 'package:admin_v2/features/common/domain/models/deliveryOption/option_response.dart';
import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
import 'package:admin_v2/features/report/domain/models/mostSellingProducts/most_selling_response.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'common_state.dart';

@injectable
class CommonCubit extends Cubit<CommonState> {
  final CommonRepostories _commonRepostories;
  CommonCubit(this._commonRepostories) : super(InitialCommonState());

  Future<void> store() async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.storeList();

      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            storeList: res.data,
            selectedStore: res.data?.first,
            selectDate: custDate.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedStore(StoreResponse store) async {
    emit(state.copyWith(selectedStore: store));
  }

  Future<void> selectedStoreforProfitloss(StoreResponse store) async {
    emit(state.copyWith(storeForProfitloss: store));
  }

  Future<void> selectedDate(ListOfDemo store) async {
    emit(state.copyWith(selectDate: store));
  }

  Future<void> account() async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.account();
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            accountList: res.data,
            selectedAccount: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedAccount(AccountDataResponse store) async {
    emit(state.copyWith(selectedAccount: store));
  }

  Future<void> orderOption(int? storeId, int? appTypeId) async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.orderOption(
        storeId: storeId ?? 0,
        appTypeId: appTypeId ?? 0,
      );
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            optionList: res.data,
            selectedOption: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedOption(OptionResponse options) async {
    emit(state.copyWith(selectedOption: options));
  }

  Future<void> purchaseType({int? id, String? name}) async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.purchaseType();

      print('////all////:${res.data}');
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            purchaseType: res.data,
            selectedPurchaseType: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedPurchase(PurchaseType options) async {
    emit(state.copyWith(selectedPurchaseType: options));
  }

  Future<void> loadSellingProducts(int? storeId, int? categoryId) async {
    try {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.loading));
      final res = await _commonRepostories.loadSellingProducts(
        storeId: storeId ?? 0,
        categoryId: categoryId ?? 0,
      );
      if (res.data != null) {
        emit(
          state.copyWith(
            apiFetchStatus: ApiFetchStatus.success,
            sellingProductsReport: res.data,
            selectedProducts: res.data?.first,
          ),
        );
      }
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    } catch (e) {
      emit(state.copyWith(apiFetchStatus: ApiFetchStatus.failed));
    }
  }

  Future<void> selectedProducts(MostSellingResponse products) async {
    emit(state.copyWith(selectedProducts: products));
  }
}
