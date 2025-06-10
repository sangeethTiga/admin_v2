// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usershift_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserShiftReportResponseImpl _$$UserShiftReportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserShiftReportResponseImpl(
  userShiftId: (json['user_shift_id'] as num?)?.toInt(),
  storeShiftId: (json['store_shift_id'] as num?)?.toInt(),
  roleId: (json['role_id'] as num?)?.toInt(),
  companyUsersId: (json['company_users_id'] as num?)?.toInt(),
  actionId: (json['action_id'] as num?)?.toInt(),
  drawerBalance: (json['drawer_balance'] as num?)?.toInt(),
  kioskId: (json['kiosk_id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  dayCloseId: (json['day_close_id'] as num?)?.toInt(),
  isSynced: (json['is_synced'] as num?)?.toInt(),
  deviceSerialNo: json['device_serial_no'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  shiftName: json['shift_name'] as String?,
  userName: json['user_name'] as String?,
  roleName: json['role_name'] as String?,
  deviceName: json['device_name'] as String?,
  rowcount: (json['rowcount'] as num?)?.toInt(),
  openingTime: json['opening_time'] as String?,
  openingBalance: (json['opening_balance'] as num?)?.toDouble(),
  closingTime: json['closing_time'] as String?,
  closingBalance: (json['closing_balance'] as num?)?.toDouble(),
  drawerBalances: json['drawer_balances'] as List<dynamic>?,
  currencyDenominations: json['currency_denominations'] as List<dynamic>?,
);

Map<String, dynamic> _$$UserShiftReportResponseImplToJson(
  _$UserShiftReportResponseImpl instance,
) => <String, dynamic>{
  'user_shift_id': instance.userShiftId,
  'store_shift_id': instance.storeShiftId,
  'role_id': instance.roleId,
  'company_users_id': instance.companyUsersId,
  'action_id': instance.actionId,
  'drawer_balance': instance.drawerBalance,
  'kiosk_id': instance.kioskId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt?.toIso8601String(),
  'day_close_id': instance.dayCloseId,
  'is_synced': instance.isSynced,
  'device_serial_no': instance.deviceSerialNo,
  'store_id': instance.storeId,
  'shift_name': instance.shiftName,
  'user_name': instance.userName,
  'role_name': instance.roleName,
  'device_name': instance.deviceName,
  'rowcount': instance.rowcount,
  'opening_time': instance.openingTime,
  'opening_balance': instance.openingBalance,
  'closing_time': instance.closingTime,
  'closing_balance': instance.closingBalance,
  'drawer_balances': instance.drawerBalances,
  'currency_denominations': instance.currencyDenominations,
};
