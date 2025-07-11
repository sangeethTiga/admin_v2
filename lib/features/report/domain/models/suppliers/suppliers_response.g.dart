// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppliers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuppliersResponseImpl _$$SuppliersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SuppliersResponseImpl(
  supplierId: (json['supplier_id'] as num?)?.toInt(),
  supplierName: json['supplier_name'] as String?,
  email: json['email'] as String?,
  phone: (json['phone'] as num?)?.toInt(),
  accountId: (json['account_id'] as num?)?.toInt(),
  accountHolder: json['account_holder'],
  acctNo: json['acct_no'],
  ifscCode: json['ifsc_code'],
  bank: json['bank'],
  taxNo: json['tax_no'],
  address: json['address'],
  areaId: (json['area_id'] as num?)?.toInt(),
  stateId: (json['state_id'] as num?)?.toInt(),
  countryId: (json['country_id'] as num?)?.toInt(),
  balanceAmt: parseDouble(json['balance_amt']),
  storeId: json['store_id'] as String?,
  storeName: json['store_name'] as String?,
);

Map<String, dynamic> _$$SuppliersResponseImplToJson(
  _$SuppliersResponseImpl instance,
) => <String, dynamic>{
  'supplier_id': instance.supplierId,
  'supplier_name': instance.supplierName,
  'email': instance.email,
  'phone': instance.phone,
  'account_id': instance.accountId,
  'account_holder': instance.accountHolder,
  'acct_no': instance.acctNo,
  'ifsc_code': instance.ifscCode,
  'bank': instance.bank,
  'tax_no': instance.taxNo,
  'address': instance.address,
  'area_id': instance.areaId,
  'state_id': instance.stateId,
  'country_id': instance.countryId,
  'balance_amt': instance.balanceAmt,
  'store_id': instance.storeId,
  'store_name': instance.storeName,
};
