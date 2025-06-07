import 'package:admin_v2/features/report/domain/models/sales/sales_report_response.dart';
import 'package:admin_v2/features/report/domain/repositories/report_repositores.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/app/list/helper.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'report_state.dart';

@injectable
class ReportCubit extends Cubit<ReportState> {
  final ReportRepositories _reportRepositories;
  ReportCubit(this._reportRepositories) : super(InitialReportState());

  Future<void> loadSalesReport({
    int? storeId,
    String? type,
    String? duration,
    String? paymentMethod,
    String? waiter,
    String? shift,
    String? cashier,
    String? status,
    String? kiosks,
    String? cashe,
    String? groupBy,
    String? deliveryPartner,
    String? isDayClosed,
    String? fromDate,
    String? toDate,
  }) async {
    emit(state.copyWith(isSaleReport: ApiFetchStatus.loading));
    final res = await _reportRepositories.loadSalesReport(
      storeId: storeId ?? 0,
      type: type ?? '',
      duration: duration ?? '',
      paymentMethod: paymentMethod ?? '',
      waiter: waiter ?? '',
      shift: shift ?? '',
      cashier: cashier ?? '',
      status: status ?? '',
      kiosks: kiosks ?? '',
      cashe: cashe ?? '',
      groupBy: groupBy ?? '',
      deliveryPartner: deliveryPartner ?? '',
      isDayClosed: isDayClosed ?? '',
      fromDate: parsedDate(state.fromDate ?? DateTime.now()),
      toDate: parsedDate(state.toDate ?? DateTime.now()),
    );
    if (res.data != null) {
      emit(
        state.copyWith(
          salesReport: res.data,
          isSaleReport: ApiFetchStatus.success,
        ),
      );
    }
    emit(state.copyWith(isSaleReport: ApiFetchStatus.failed));
  }

  Future<void> changeFromDate(DateTime date) async {
    emit(state.copyWith(fromDate: date));
  }

  Future<void> changeToDate(DateTime date) async {
    emit(state.copyWith(toDate: date));
  }
}
