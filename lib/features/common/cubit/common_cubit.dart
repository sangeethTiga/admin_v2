import 'package:admin_v2/features/common/domain/models/store/store_response.dart';
import 'package:admin_v2/features/common/domain/repositores/common_repostories.dart';
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

  Future<void> selectedDate(ListOfDemo store) async {
    emit(state.copyWith(selectDate: store));
  }
}
