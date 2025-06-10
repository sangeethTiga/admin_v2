import 'package:freezed_annotation/freezed_annotation.dart';

part 'usershift_report_response.freezed.dart';
part 'usershift_report_response.g.dart';

@freezed
class   UserShiftReportResponse with _$UserShiftReportResponse {
  const factory UserShiftReportResponse({
    @JsonKey(name: "user_shift_id") int? userShiftId,
    @JsonKey(name: "store_shift_id") int? storeShiftId,
    @JsonKey(name: "role_id") int? roleId,
    @JsonKey(name: "company_users_id") int? companyUsersId,
    @JsonKey(name: "action_id") int? actionId,
    @JsonKey(name: "drawer_balance") int? drawerBalance,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "day_close_id") int? dayCloseId,
    @JsonKey(name: "is_synced") int? isSynced,
    @JsonKey(name: "device_serial_no") String? deviceSerialNo,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "shift_name") String? shiftName,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "role_name") String? roleName,
    @JsonKey(name: "device_name") String? deviceName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: "opening_balance") double? openingBalance,
    @JsonKey(name: "closing_time") String? closingTime,
    @JsonKey(name: "closing_balance") double? closingBalance,
    @JsonKey(name: "drawer_balances") List<dynamic>? drawerBalances,
    @JsonKey(name: "currency_denominations")
    List<dynamic>? currencyDenominations,
  }) = _UserShiftReportResponse;

  factory UserShiftReportResponse.fromJson(Map<String, dynamic> json) =>
      _$UserShiftReportResponseFromJson(json);
}
