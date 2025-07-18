// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurchaseResponse _$PurchaseResponseFromJson(Map<String, dynamic> json) {
  return _PurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchaseResponse {
  @JsonKey(name: "purchase_id")
  int? get purchaseId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_date")
  String? get purchaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_id")
  int? get supplierId => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_name")
  String? get supplierName => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_number")
  String? get invoiceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  int? get totalamount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_credit")
  int? get isCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "is_item_wise_purchase")
  int? get isItemWisePurchase => throw _privateConstructorUsedError;
  @JsonKey(name: "bank")
  String? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "ifsc_code")
  String? get ifscCode => throw _privateConstructorUsedError;
  @JsonKey(name: "acct_number")
  int? get acctNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_group_id")
  int? get transGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_name")
  dynamic get payMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "row_count")
  int? get rowCount => throw _privateConstructorUsedError;
  @JsonKey(name: "item_wise_purchase")
  List<dynamic>? get itemWisePurchase => throw _privateConstructorUsedError;

  /// Serializes this PurchaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseResponseCopyWith<PurchaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseResponseCopyWith<$Res> {
  factory $PurchaseResponseCopyWith(
    PurchaseResponse value,
    $Res Function(PurchaseResponse) then,
  ) = _$PurchaseResponseCopyWithImpl<$Res, PurchaseResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "purchase_id") int? purchaseId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "purchase_date") String? purchaseDate,
    @JsonKey(name: "supplier_id") int? supplierId,
    @JsonKey(name: "supplier_name") String? supplierName,
    @JsonKey(name: "invoice_number") String? invoiceNumber,
    @JsonKey(name: "total_amount") int? totalAmount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "vat") double? vat,
    @JsonKey(name: "payment_method_id") int? paymentMethodId,
    @JsonKey(name: "is_credit") int? isCredit,
    @JsonKey(name: "is_item_wise_purchase") int? isItemWisePurchase,
    @JsonKey(name: "bank") String? bank,
    @JsonKey(name: "ifsc_code") String? ifscCode,
    @JsonKey(name: "acct_number") int? acctNumber,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "trans_group_id") int? transGroupId,
    @JsonKey(name: "pay_method_name") dynamic payMethodName,
    @JsonKey(name: "row_count") int? rowCount,
    @JsonKey(name: "item_wise_purchase") List<dynamic>? itemWisePurchase,
  });
}

/// @nodoc
class _$PurchaseResponseCopyWithImpl<$Res, $Val extends PurchaseResponse>
    implements $PurchaseResponseCopyWith<$Res> {
  _$PurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseId = freezed,
    Object? storeId = freezed,
    Object? purchaseDate = freezed,
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? invoiceNumber = freezed,
    Object? totalAmount = freezed,
    Object? totalamount = freezed,
    Object? vat = freezed,
    Object? paymentMethodId = freezed,
    Object? isCredit = freezed,
    Object? isItemWisePurchase = freezed,
    Object? bank = freezed,
    Object? ifscCode = freezed,
    Object? acctNumber = freezed,
    Object? description = freezed,
    Object? transGroupId = freezed,
    Object? payMethodName = freezed,
    Object? rowCount = freezed,
    Object? itemWisePurchase = freezed,
  }) {
    return _then(
      _value.copyWith(
            purchaseId: freezed == purchaseId
                ? _value.purchaseId
                : purchaseId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            purchaseDate: freezed == purchaseDate
                ? _value.purchaseDate
                : purchaseDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            supplierId: freezed == supplierId
                ? _value.supplierId
                : supplierId // ignore: cast_nullable_to_non_nullable
                      as int?,
            supplierName: freezed == supplierName
                ? _value.supplierName
                : supplierName // ignore: cast_nullable_to_non_nullable
                      as String?,
            invoiceNumber: freezed == invoiceNumber
                ? _value.invoiceNumber
                : invoiceNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalAmount: freezed == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as int?,
            vat: freezed == vat
                ? _value.vat
                : vat // ignore: cast_nullable_to_non_nullable
                      as double?,
            paymentMethodId: freezed == paymentMethodId
                ? _value.paymentMethodId
                : paymentMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isCredit: freezed == isCredit
                ? _value.isCredit
                : isCredit // ignore: cast_nullable_to_non_nullable
                      as int?,
            isItemWisePurchase: freezed == isItemWisePurchase
                ? _value.isItemWisePurchase
                : isItemWisePurchase // ignore: cast_nullable_to_non_nullable
                      as int?,
            bank: freezed == bank
                ? _value.bank
                : bank // ignore: cast_nullable_to_non_nullable
                      as String?,
            ifscCode: freezed == ifscCode
                ? _value.ifscCode
                : ifscCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            acctNumber: freezed == acctNumber
                ? _value.acctNumber
                : acctNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            transGroupId: freezed == transGroupId
                ? _value.transGroupId
                : transGroupId // ignore: cast_nullable_to_non_nullable
                      as int?,
            payMethodName: freezed == payMethodName
                ? _value.payMethodName
                : payMethodName // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            rowCount: freezed == rowCount
                ? _value.rowCount
                : rowCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemWisePurchase: freezed == itemWisePurchase
                ? _value.itemWisePurchase
                : itemWisePurchase // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurchaseResponseImplCopyWith<$Res>
    implements $PurchaseResponseCopyWith<$Res> {
  factory _$$PurchaseResponseImplCopyWith(
    _$PurchaseResponseImpl value,
    $Res Function(_$PurchaseResponseImpl) then,
  ) = __$$PurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "purchase_id") int? purchaseId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "purchase_date") String? purchaseDate,
    @JsonKey(name: "supplier_id") int? supplierId,
    @JsonKey(name: "supplier_name") String? supplierName,
    @JsonKey(name: "invoice_number") String? invoiceNumber,
    @JsonKey(name: "total_amount") int? totalAmount,
    @JsonKey(name: "totalamount") int? totalamount,
    @JsonKey(name: "vat") double? vat,
    @JsonKey(name: "payment_method_id") int? paymentMethodId,
    @JsonKey(name: "is_credit") int? isCredit,
    @JsonKey(name: "is_item_wise_purchase") int? isItemWisePurchase,
    @JsonKey(name: "bank") String? bank,
    @JsonKey(name: "ifsc_code") String? ifscCode,
    @JsonKey(name: "acct_number") int? acctNumber,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "trans_group_id") int? transGroupId,
    @JsonKey(name: "pay_method_name") dynamic payMethodName,
    @JsonKey(name: "row_count") int? rowCount,
    @JsonKey(name: "item_wise_purchase") List<dynamic>? itemWisePurchase,
  });
}

/// @nodoc
class __$$PurchaseResponseImplCopyWithImpl<$Res>
    extends _$PurchaseResponseCopyWithImpl<$Res, _$PurchaseResponseImpl>
    implements _$$PurchaseResponseImplCopyWith<$Res> {
  __$$PurchaseResponseImplCopyWithImpl(
    _$PurchaseResponseImpl _value,
    $Res Function(_$PurchaseResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseId = freezed,
    Object? storeId = freezed,
    Object? purchaseDate = freezed,
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? invoiceNumber = freezed,
    Object? totalAmount = freezed,
    Object? totalamount = freezed,
    Object? vat = freezed,
    Object? paymentMethodId = freezed,
    Object? isCredit = freezed,
    Object? isItemWisePurchase = freezed,
    Object? bank = freezed,
    Object? ifscCode = freezed,
    Object? acctNumber = freezed,
    Object? description = freezed,
    Object? transGroupId = freezed,
    Object? payMethodName = freezed,
    Object? rowCount = freezed,
    Object? itemWisePurchase = freezed,
  }) {
    return _then(
      _$PurchaseResponseImpl(
        purchaseId: freezed == purchaseId
            ? _value.purchaseId
            : purchaseId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        purchaseDate: freezed == purchaseDate
            ? _value.purchaseDate
            : purchaseDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        supplierId: freezed == supplierId
            ? _value.supplierId
            : supplierId // ignore: cast_nullable_to_non_nullable
                  as int?,
        supplierName: freezed == supplierName
            ? _value.supplierName
            : supplierName // ignore: cast_nullable_to_non_nullable
                  as String?,
        invoiceNumber: freezed == invoiceNumber
            ? _value.invoiceNumber
            : invoiceNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalAmount: freezed == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as int?,
        vat: freezed == vat
            ? _value.vat
            : vat // ignore: cast_nullable_to_non_nullable
                  as double?,
        paymentMethodId: freezed == paymentMethodId
            ? _value.paymentMethodId
            : paymentMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isCredit: freezed == isCredit
            ? _value.isCredit
            : isCredit // ignore: cast_nullable_to_non_nullable
                  as int?,
        isItemWisePurchase: freezed == isItemWisePurchase
            ? _value.isItemWisePurchase
            : isItemWisePurchase // ignore: cast_nullable_to_non_nullable
                  as int?,
        bank: freezed == bank
            ? _value.bank
            : bank // ignore: cast_nullable_to_non_nullable
                  as String?,
        ifscCode: freezed == ifscCode
            ? _value.ifscCode
            : ifscCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        acctNumber: freezed == acctNumber
            ? _value.acctNumber
            : acctNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        transGroupId: freezed == transGroupId
            ? _value.transGroupId
            : transGroupId // ignore: cast_nullable_to_non_nullable
                  as int?,
        payMethodName: freezed == payMethodName
            ? _value.payMethodName
            : payMethodName // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        rowCount: freezed == rowCount
            ? _value.rowCount
            : rowCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemWisePurchase: freezed == itemWisePurchase
            ? _value._itemWisePurchase
            : itemWisePurchase // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseResponseImpl implements _PurchaseResponse {
  const _$PurchaseResponseImpl({
    @JsonKey(name: "purchase_id") this.purchaseId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "purchase_date") this.purchaseDate,
    @JsonKey(name: "supplier_id") this.supplierId,
    @JsonKey(name: "supplier_name") this.supplierName,
    @JsonKey(name: "invoice_number") this.invoiceNumber,
    @JsonKey(name: "total_amount") this.totalAmount,
    @JsonKey(name: "totalamount") this.totalamount,
    @JsonKey(name: "vat") this.vat,
    @JsonKey(name: "payment_method_id") this.paymentMethodId,
    @JsonKey(name: "is_credit") this.isCredit,
    @JsonKey(name: "is_item_wise_purchase") this.isItemWisePurchase,
    @JsonKey(name: "bank") this.bank,
    @JsonKey(name: "ifsc_code") this.ifscCode,
    @JsonKey(name: "acct_number") this.acctNumber,
    @JsonKey(name: "description") this.description,
    @JsonKey(name: "trans_group_id") this.transGroupId,
    @JsonKey(name: "pay_method_name") this.payMethodName,
    @JsonKey(name: "row_count") this.rowCount,
    @JsonKey(name: "item_wise_purchase") final List<dynamic>? itemWisePurchase,
  }) : _itemWisePurchase = itemWisePurchase;

  factory _$PurchaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseResponseImplFromJson(json);

  @override
  @JsonKey(name: "purchase_id")
  final int? purchaseId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "purchase_date")
  final String? purchaseDate;
  @override
  @JsonKey(name: "supplier_id")
  final int? supplierId;
  @override
  @JsonKey(name: "supplier_name")
  final String? supplierName;
  @override
  @JsonKey(name: "invoice_number")
  final String? invoiceNumber;
  @override
  @JsonKey(name: "total_amount")
  final int? totalAmount;
  @override
  @JsonKey(name: "totalamount")
  final int? totalamount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "payment_method_id")
  final int? paymentMethodId;
  @override
  @JsonKey(name: "is_credit")
  final int? isCredit;
  @override
  @JsonKey(name: "is_item_wise_purchase")
  final int? isItemWisePurchase;
  @override
  @JsonKey(name: "bank")
  final String? bank;
  @override
  @JsonKey(name: "ifsc_code")
  final String? ifscCode;
  @override
  @JsonKey(name: "acct_number")
  final int? acctNumber;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "trans_group_id")
  final int? transGroupId;
  @override
  @JsonKey(name: "pay_method_name")
  final dynamic payMethodName;
  @override
  @JsonKey(name: "row_count")
  final int? rowCount;
  final List<dynamic>? _itemWisePurchase;
  @override
  @JsonKey(name: "item_wise_purchase")
  List<dynamic>? get itemWisePurchase {
    final value = _itemWisePurchase;
    if (value == null) return null;
    if (_itemWisePurchase is EqualUnmodifiableListView)
      return _itemWisePurchase;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchaseResponse(purchaseId: $purchaseId, storeId: $storeId, purchaseDate: $purchaseDate, supplierId: $supplierId, supplierName: $supplierName, invoiceNumber: $invoiceNumber, totalAmount: $totalAmount, totalamount: $totalamount, vat: $vat, paymentMethodId: $paymentMethodId, isCredit: $isCredit, isItemWisePurchase: $isItemWisePurchase, bank: $bank, ifscCode: $ifscCode, acctNumber: $acctNumber, description: $description, transGroupId: $transGroupId, payMethodName: $payMethodName, rowCount: $rowCount, itemWisePurchase: $itemWisePurchase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseResponseImpl &&
            (identical(other.purchaseId, purchaseId) ||
                other.purchaseId == purchaseId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.isCredit, isCredit) ||
                other.isCredit == isCredit) &&
            (identical(other.isItemWisePurchase, isItemWisePurchase) ||
                other.isItemWisePurchase == isItemWisePurchase) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.acctNumber, acctNumber) ||
                other.acctNumber == acctNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.transGroupId, transGroupId) ||
                other.transGroupId == transGroupId) &&
            const DeepCollectionEquality().equals(
              other.payMethodName,
              payMethodName,
            ) &&
            (identical(other.rowCount, rowCount) ||
                other.rowCount == rowCount) &&
            const DeepCollectionEquality().equals(
              other._itemWisePurchase,
              _itemWisePurchase,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    purchaseId,
    storeId,
    purchaseDate,
    supplierId,
    supplierName,
    invoiceNumber,
    totalAmount,
    totalamount,
    vat,
    paymentMethodId,
    isCredit,
    isItemWisePurchase,
    bank,
    ifscCode,
    acctNumber,
    description,
    transGroupId,
    const DeepCollectionEquality().hash(payMethodName),
    rowCount,
    const DeepCollectionEquality().hash(_itemWisePurchase),
  ]);

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      __$$PurchaseResponseImplCopyWithImpl<_$PurchaseResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseResponseImplToJson(this);
  }
}

abstract class _PurchaseResponse implements PurchaseResponse {
  const factory _PurchaseResponse({
    @JsonKey(name: "purchase_id") final int? purchaseId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "purchase_date") final String? purchaseDate,
    @JsonKey(name: "supplier_id") final int? supplierId,
    @JsonKey(name: "supplier_name") final String? supplierName,
    @JsonKey(name: "invoice_number") final String? invoiceNumber,
    @JsonKey(name: "total_amount") final int? totalAmount,
    @JsonKey(name: "totalamount") final int? totalamount,
    @JsonKey(name: "vat") final double? vat,
    @JsonKey(name: "payment_method_id") final int? paymentMethodId,
    @JsonKey(name: "is_credit") final int? isCredit,
    @JsonKey(name: "is_item_wise_purchase") final int? isItemWisePurchase,
    @JsonKey(name: "bank") final String? bank,
    @JsonKey(name: "ifsc_code") final String? ifscCode,
    @JsonKey(name: "acct_number") final int? acctNumber,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "trans_group_id") final int? transGroupId,
    @JsonKey(name: "pay_method_name") final dynamic payMethodName,
    @JsonKey(name: "row_count") final int? rowCount,
    @JsonKey(name: "item_wise_purchase") final List<dynamic>? itemWisePurchase,
  }) = _$PurchaseResponseImpl;

  factory _PurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$PurchaseResponseImpl.fromJson;

  @override
  @JsonKey(name: "purchase_id")
  int? get purchaseId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "purchase_date")
  String? get purchaseDate;
  @override
  @JsonKey(name: "supplier_id")
  int? get supplierId;
  @override
  @JsonKey(name: "supplier_name")
  String? get supplierName;
  @override
  @JsonKey(name: "invoice_number")
  String? get invoiceNumber;
  @override
  @JsonKey(name: "total_amount")
  int? get totalAmount;
  @override
  @JsonKey(name: "totalamount")
  int? get totalamount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "payment_method_id")
  int? get paymentMethodId;
  @override
  @JsonKey(name: "is_credit")
  int? get isCredit;
  @override
  @JsonKey(name: "is_item_wise_purchase")
  int? get isItemWisePurchase;
  @override
  @JsonKey(name: "bank")
  String? get bank;
  @override
  @JsonKey(name: "ifsc_code")
  String? get ifscCode;
  @override
  @JsonKey(name: "acct_number")
  int? get acctNumber;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "trans_group_id")
  int? get transGroupId;
  @override
  @JsonKey(name: "pay_method_name")
  dynamic get payMethodName;
  @override
  @JsonKey(name: "row_count")
  int? get rowCount;
  @override
  @JsonKey(name: "item_wise_purchase")
  List<dynamic>? get itemWisePurchase;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
