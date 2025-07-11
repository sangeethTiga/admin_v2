// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suppliers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuppliersResponse _$SuppliersResponseFromJson(Map<String, dynamic> json) {
  return _SuppliersResponse.fromJson(json);
}

/// @nodoc
mixin _$SuppliersResponse {
  @JsonKey(name: "supplier_id")
  int? get supplierId => throw _privateConstructorUsedError;
  @JsonKey(name: "supplier_name")
  String? get supplierName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  int? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "account_id")
  int? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "account_holder")
  dynamic get accountHolder => throw _privateConstructorUsedError;
  @JsonKey(name: "acct_no")
  dynamic get acctNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ifsc_code")
  dynamic get ifscCode => throw _privateConstructorUsedError;
  @JsonKey(name: "bank")
  dynamic get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_no")
  dynamic get taxNo => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  dynamic get address => throw _privateConstructorUsedError;
  @JsonKey(name: "area_id")
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: "state_id")
  int? get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  double? get balanceAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  String? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;

  /// Serializes this SuppliersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuppliersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuppliersResponseCopyWith<SuppliersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuppliersResponseCopyWith<$Res> {
  factory $SuppliersResponseCopyWith(
    SuppliersResponse value,
    $Res Function(SuppliersResponse) then,
  ) = _$SuppliersResponseCopyWithImpl<$Res, SuppliersResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "supplier_id") int? supplierId,
    @JsonKey(name: "supplier_name") String? supplierName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") int? phone,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "account_holder") dynamic accountHolder,
    @JsonKey(name: "acct_no") dynamic acctNo,
    @JsonKey(name: "ifsc_code") dynamic ifscCode,
    @JsonKey(name: "bank") dynamic bank,
    @JsonKey(name: "tax_no") dynamic taxNo,
    @JsonKey(name: "address") dynamic address,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "state_id") int? stateId,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) double? balanceAmt,
    @JsonKey(name: "store_id") String? storeId,
    @JsonKey(name: "store_name") String? storeName,
  });
}

/// @nodoc
class _$SuppliersResponseCopyWithImpl<$Res, $Val extends SuppliersResponse>
    implements $SuppliersResponseCopyWith<$Res> {
  _$SuppliersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuppliersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? accountId = freezed,
    Object? accountHolder = freezed,
    Object? acctNo = freezed,
    Object? ifscCode = freezed,
    Object? bank = freezed,
    Object? taxNo = freezed,
    Object? address = freezed,
    Object? areaId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? balanceAmt = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _value.copyWith(
            supplierId: freezed == supplierId
                ? _value.supplierId
                : supplierId // ignore: cast_nullable_to_non_nullable
                      as int?,
            supplierName: freezed == supplierName
                ? _value.supplierName
                : supplierName // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountId: freezed == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountHolder: freezed == accountHolder
                ? _value.accountHolder
                : accountHolder // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            acctNo: freezed == acctNo
                ? _value.acctNo
                : acctNo // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            ifscCode: freezed == ifscCode
                ? _value.ifscCode
                : ifscCode // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            bank: freezed == bank
                ? _value.bank
                : bank // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            taxNo: freezed == taxNo
                ? _value.taxNo
                : taxNo // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            areaId: freezed == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as int?,
            stateId: freezed == stateId
                ? _value.stateId
                : stateId // ignore: cast_nullable_to_non_nullable
                      as int?,
            countryId: freezed == countryId
                ? _value.countryId
                : countryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            balanceAmt: freezed == balanceAmt
                ? _value.balanceAmt
                : balanceAmt // ignore: cast_nullable_to_non_nullable
                      as double?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SuppliersResponseImplCopyWith<$Res>
    implements $SuppliersResponseCopyWith<$Res> {
  factory _$$SuppliersResponseImplCopyWith(
    _$SuppliersResponseImpl value,
    $Res Function(_$SuppliersResponseImpl) then,
  ) = __$$SuppliersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "supplier_id") int? supplierId,
    @JsonKey(name: "supplier_name") String? supplierName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") int? phone,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "account_holder") dynamic accountHolder,
    @JsonKey(name: "acct_no") dynamic acctNo,
    @JsonKey(name: "ifsc_code") dynamic ifscCode,
    @JsonKey(name: "bank") dynamic bank,
    @JsonKey(name: "tax_no") dynamic taxNo,
    @JsonKey(name: "address") dynamic address,
    @JsonKey(name: "area_id") int? areaId,
    @JsonKey(name: "state_id") int? stateId,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) double? balanceAmt,
    @JsonKey(name: "store_id") String? storeId,
    @JsonKey(name: "store_name") String? storeName,
  });
}

/// @nodoc
class __$$SuppliersResponseImplCopyWithImpl<$Res>
    extends _$SuppliersResponseCopyWithImpl<$Res, _$SuppliersResponseImpl>
    implements _$$SuppliersResponseImplCopyWith<$Res> {
  __$$SuppliersResponseImplCopyWithImpl(
    _$SuppliersResponseImpl _value,
    $Res Function(_$SuppliersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuppliersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? accountId = freezed,
    Object? accountHolder = freezed,
    Object? acctNo = freezed,
    Object? ifscCode = freezed,
    Object? bank = freezed,
    Object? taxNo = freezed,
    Object? address = freezed,
    Object? areaId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? balanceAmt = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _$SuppliersResponseImpl(
        supplierId: freezed == supplierId
            ? _value.supplierId
            : supplierId // ignore: cast_nullable_to_non_nullable
                  as int?,
        supplierName: freezed == supplierName
            ? _value.supplierName
            : supplierName // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountId: freezed == accountId
            ? _value.accountId
            : accountId // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountHolder: freezed == accountHolder
            ? _value.accountHolder
            : accountHolder // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        acctNo: freezed == acctNo
            ? _value.acctNo
            : acctNo // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        ifscCode: freezed == ifscCode
            ? _value.ifscCode
            : ifscCode // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        bank: freezed == bank
            ? _value.bank
            : bank // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        taxNo: freezed == taxNo
            ? _value.taxNo
            : taxNo // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        areaId: freezed == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as int?,
        stateId: freezed == stateId
            ? _value.stateId
            : stateId // ignore: cast_nullable_to_non_nullable
                  as int?,
        countryId: freezed == countryId
            ? _value.countryId
            : countryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        balanceAmt: freezed == balanceAmt
            ? _value.balanceAmt
            : balanceAmt // ignore: cast_nullable_to_non_nullable
                  as double?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SuppliersResponseImpl implements _SuppliersResponse {
  const _$SuppliersResponseImpl({
    @JsonKey(name: "supplier_id") this.supplierId,
    @JsonKey(name: "supplier_name") this.supplierName,
    @JsonKey(name: "email") this.email,
    @JsonKey(name: "phone") this.phone,
    @JsonKey(name: "account_id") this.accountId,
    @JsonKey(name: "account_holder") this.accountHolder,
    @JsonKey(name: "acct_no") this.acctNo,
    @JsonKey(name: "ifsc_code") this.ifscCode,
    @JsonKey(name: "bank") this.bank,
    @JsonKey(name: "tax_no") this.taxNo,
    @JsonKey(name: "address") this.address,
    @JsonKey(name: "area_id") this.areaId,
    @JsonKey(name: "state_id") this.stateId,
    @JsonKey(name: "country_id") this.countryId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) this.balanceAmt,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "store_name") this.storeName,
  });

  factory _$SuppliersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuppliersResponseImplFromJson(json);

  @override
  @JsonKey(name: "supplier_id")
  final int? supplierId;
  @override
  @JsonKey(name: "supplier_name")
  final String? supplierName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final int? phone;
  @override
  @JsonKey(name: "account_id")
  final int? accountId;
  @override
  @JsonKey(name: "account_holder")
  final dynamic accountHolder;
  @override
  @JsonKey(name: "acct_no")
  final dynamic acctNo;
  @override
  @JsonKey(name: "ifsc_code")
  final dynamic ifscCode;
  @override
  @JsonKey(name: "bank")
  final dynamic bank;
  @override
  @JsonKey(name: "tax_no")
  final dynamic taxNo;
  @override
  @JsonKey(name: "address")
  final dynamic address;
  @override
  @JsonKey(name: "area_id")
  final int? areaId;
  @override
  @JsonKey(name: "state_id")
  final int? stateId;
  @override
  @JsonKey(name: "country_id")
  final int? countryId;
  @override
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  final double? balanceAmt;
  @override
  @JsonKey(name: "store_id")
  final String? storeId;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;

  @override
  String toString() {
    return 'SuppliersResponse(supplierId: $supplierId, supplierName: $supplierName, email: $email, phone: $phone, accountId: $accountId, accountHolder: $accountHolder, acctNo: $acctNo, ifscCode: $ifscCode, bank: $bank, taxNo: $taxNo, address: $address, areaId: $areaId, stateId: $stateId, countryId: $countryId, balanceAmt: $balanceAmt, storeId: $storeId, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuppliersResponseImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality().equals(
              other.accountHolder,
              accountHolder,
            ) &&
            const DeepCollectionEquality().equals(other.acctNo, acctNo) &&
            const DeepCollectionEquality().equals(other.ifscCode, ifscCode) &&
            const DeepCollectionEquality().equals(other.bank, bank) &&
            const DeepCollectionEquality().equals(other.taxNo, taxNo) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.balanceAmt, balanceAmt) ||
                other.balanceAmt == balanceAmt) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    supplierId,
    supplierName,
    email,
    phone,
    accountId,
    const DeepCollectionEquality().hash(accountHolder),
    const DeepCollectionEquality().hash(acctNo),
    const DeepCollectionEquality().hash(ifscCode),
    const DeepCollectionEquality().hash(bank),
    const DeepCollectionEquality().hash(taxNo),
    const DeepCollectionEquality().hash(address),
    areaId,
    stateId,
    countryId,
    balanceAmt,
    storeId,
    storeName,
  );

  /// Create a copy of SuppliersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuppliersResponseImplCopyWith<_$SuppliersResponseImpl> get copyWith =>
      __$$SuppliersResponseImplCopyWithImpl<_$SuppliersResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuppliersResponseImplToJson(this);
  }
}

abstract class _SuppliersResponse implements SuppliersResponse {
  const factory _SuppliersResponse({
    @JsonKey(name: "supplier_id") final int? supplierId,
    @JsonKey(name: "supplier_name") final String? supplierName,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "phone") final int? phone,
    @JsonKey(name: "account_id") final int? accountId,
    @JsonKey(name: "account_holder") final dynamic accountHolder,
    @JsonKey(name: "acct_no") final dynamic acctNo,
    @JsonKey(name: "ifsc_code") final dynamic ifscCode,
    @JsonKey(name: "bank") final dynamic bank,
    @JsonKey(name: "tax_no") final dynamic taxNo,
    @JsonKey(name: "address") final dynamic address,
    @JsonKey(name: "area_id") final int? areaId,
    @JsonKey(name: "state_id") final int? stateId,
    @JsonKey(name: "country_id") final int? countryId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble)
    final double? balanceAmt,
    @JsonKey(name: "store_id") final String? storeId,
    @JsonKey(name: "store_name") final String? storeName,
  }) = _$SuppliersResponseImpl;

  factory _SuppliersResponse.fromJson(Map<String, dynamic> json) =
      _$SuppliersResponseImpl.fromJson;

  @override
  @JsonKey(name: "supplier_id")
  int? get supplierId;
  @override
  @JsonKey(name: "supplier_name")
  String? get supplierName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  int? get phone;
  @override
  @JsonKey(name: "account_id")
  int? get accountId;
  @override
  @JsonKey(name: "account_holder")
  dynamic get accountHolder;
  @override
  @JsonKey(name: "acct_no")
  dynamic get acctNo;
  @override
  @JsonKey(name: "ifsc_code")
  dynamic get ifscCode;
  @override
  @JsonKey(name: "bank")
  dynamic get bank;
  @override
  @JsonKey(name: "tax_no")
  dynamic get taxNo;
  @override
  @JsonKey(name: "address")
  dynamic get address;
  @override
  @JsonKey(name: "area_id")
  int? get areaId;
  @override
  @JsonKey(name: "state_id")
  int? get stateId;
  @override
  @JsonKey(name: "country_id")
  int? get countryId;
  @override
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  double? get balanceAmt;
  @override
  @JsonKey(name: "store_id")
  String? get storeId;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;

  /// Create a copy of SuppliersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuppliersResponseImplCopyWith<_$SuppliersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
