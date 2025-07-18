// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseResponseImpl _$$PurchaseResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PurchaseResponseImpl(
  purchaseId: (json['purchase_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  purchaseDate: json['purchase_date'] as String?,
  supplierId: (json['supplier_id'] as num?)?.toInt(),
  supplierName: json['supplier_name'] as String?,
  invoiceNumber: json['invoice_number'] as String?,
  totalAmount: (json['total_amount'] as num?)?.toInt(),
  totalamount: (json['totalamount'] as num?)?.toInt(),
  vat: (json['vat'] as num?)?.toDouble(),
  paymentMethodId: (json['payment_method_id'] as num?)?.toInt(),
  isCredit: (json['is_credit'] as num?)?.toInt(),
  isItemWisePurchase: (json['is_item_wise_purchase'] as num?)?.toInt(),
  bank: json['bank'] as String?,
  ifscCode: json['ifsc_code'] as String?,
  acctNumber: (json['acct_number'] as num?)?.toInt(),
  description: json['description'] as String?,
  transGroupId: (json['trans_group_id'] as num?)?.toInt(),
  payMethodName: json['pay_method_name'],
  rowCount: (json['row_count'] as num?)?.toInt(),
  itemWisePurchase: json['item_wise_purchase'] as List<dynamic>?,
);

Map<String, dynamic> _$$PurchaseResponseImplToJson(
  _$PurchaseResponseImpl instance,
) => <String, dynamic>{
  'purchase_id': instance.purchaseId,
  'store_id': instance.storeId,
  'purchase_date': instance.purchaseDate,
  'supplier_id': instance.supplierId,
  'supplier_name': instance.supplierName,
  'invoice_number': instance.invoiceNumber,
  'total_amount': instance.totalAmount,
  'totalamount': instance.totalamount,
  'vat': instance.vat,
  'payment_method_id': instance.paymentMethodId,
  'is_credit': instance.isCredit,
  'is_item_wise_purchase': instance.isItemWisePurchase,
  'bank': instance.bank,
  'ifsc_code': instance.ifscCode,
  'acct_number': instance.acctNumber,
  'description': instance.description,
  'trans_group_id': instance.transGroupId,
  'pay_method_name': instance.payMethodName,
  'row_count': instance.rowCount,
  'item_wise_purchase': instance.itemWisePurchase,
};
