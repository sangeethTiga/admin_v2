// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExpenseReportResponse _$ExpenseReportResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ExpenseReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ExpenseReportResponse {
  @JsonKey(name: "pay_method_name")
  String? get payMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "ac_transaction_date")
  String? get acTransactionDate => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_number")
  dynamic get invoiceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "amount", fromJson: parseDouble)
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "raw_count")
  int? get rawCount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalamount")
  String? get totalamount => throw _privateConstructorUsedError;

  /// Serializes this ExpenseReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseReportResponseCopyWith<ExpenseReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseReportResponseCopyWith<$Res> {
  factory $ExpenseReportResponseCopyWith(
    ExpenseReportResponse value,
    $Res Function(ExpenseReportResponse) then,
  ) = _$ExpenseReportResponseCopyWithImpl<$Res, ExpenseReportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "ac_transaction_date") String? acTransactionDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "invoice_number") dynamic invoiceNumber,
    @JsonKey(name: "amount", fromJson: parseDouble) double? amount,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount") String? totalamount,
  });
}

/// @nodoc
class _$ExpenseReportResponseCopyWithImpl<
  $Res,
  $Val extends ExpenseReportResponse
>
    implements $ExpenseReportResponseCopyWith<$Res> {
  _$ExpenseReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodName = freezed,
    Object? acTransactionDate = freezed,
    Object? description = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? accountName = freezed,
    Object? rawCount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _value.copyWith(
            payMethodName: freezed == payMethodName
                ? _value.payMethodName
                : payMethodName // ignore: cast_nullable_to_non_nullable
                      as String?,
            acTransactionDate: freezed == acTransactionDate
                ? _value.acTransactionDate
                : acTransactionDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            invoiceNumber: freezed == invoiceNumber
                ? _value.invoiceNumber
                : invoiceNumber // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double?,
            accountName: freezed == accountName
                ? _value.accountName
                : accountName // ignore: cast_nullable_to_non_nullable
                      as String?,
            rawCount: freezed == rawCount
                ? _value.rawCount
                : rawCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalamount: freezed == totalamount
                ? _value.totalamount
                : totalamount // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpenseReportResponseImplCopyWith<$Res>
    implements $ExpenseReportResponseCopyWith<$Res> {
  factory _$$ExpenseReportResponseImplCopyWith(
    _$ExpenseReportResponseImpl value,
    $Res Function(_$ExpenseReportResponseImpl) then,
  ) = __$$ExpenseReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "pay_method_name") String? payMethodName,
    @JsonKey(name: "ac_transaction_date") String? acTransactionDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "invoice_number") dynamic invoiceNumber,
    @JsonKey(name: "amount", fromJson: parseDouble) double? amount,
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "raw_count") int? rawCount,
    @JsonKey(name: "totalamount") String? totalamount,
  });
}

/// @nodoc
class __$$ExpenseReportResponseImplCopyWithImpl<$Res>
    extends
        _$ExpenseReportResponseCopyWithImpl<$Res, _$ExpenseReportResponseImpl>
    implements _$$ExpenseReportResponseImplCopyWith<$Res> {
  __$$ExpenseReportResponseImplCopyWithImpl(
    _$ExpenseReportResponseImpl _value,
    $Res Function(_$ExpenseReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodName = freezed,
    Object? acTransactionDate = freezed,
    Object? description = freezed,
    Object? invoiceNumber = freezed,
    Object? amount = freezed,
    Object? accountName = freezed,
    Object? rawCount = freezed,
    Object? totalamount = freezed,
  }) {
    return _then(
      _$ExpenseReportResponseImpl(
        payMethodName: freezed == payMethodName
            ? _value.payMethodName
            : payMethodName // ignore: cast_nullable_to_non_nullable
                  as String?,
        acTransactionDate: freezed == acTransactionDate
            ? _value.acTransactionDate
            : acTransactionDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        invoiceNumber: freezed == invoiceNumber
            ? _value.invoiceNumber
            : invoiceNumber // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double?,
        accountName: freezed == accountName
            ? _value.accountName
            : accountName // ignore: cast_nullable_to_non_nullable
                  as String?,
        rawCount: freezed == rawCount
            ? _value.rawCount
            : rawCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalamount: freezed == totalamount
            ? _value.totalamount
            : totalamount // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseReportResponseImpl implements _ExpenseReportResponse {
  const _$ExpenseReportResponseImpl({
    @JsonKey(name: "pay_method_name") this.payMethodName,
    @JsonKey(name: "ac_transaction_date") this.acTransactionDate,
    @JsonKey(name: "description") this.description,
    @JsonKey(name: "invoice_number") this.invoiceNumber,
    @JsonKey(name: "amount", fromJson: parseDouble) this.amount,
    @JsonKey(name: "account_name") this.accountName,
    @JsonKey(name: "raw_count") this.rawCount,
    @JsonKey(name: "totalamount") this.totalamount,
  });

  factory _$ExpenseReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "pay_method_name")
  final String? payMethodName;
  @override
  @JsonKey(name: "ac_transaction_date")
  final String? acTransactionDate;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "invoice_number")
  final dynamic invoiceNumber;
  @override
  @JsonKey(name: "amount", fromJson: parseDouble)
  final double? amount;
  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "raw_count")
  final int? rawCount;
  @override
  @JsonKey(name: "totalamount")
  final String? totalamount;

  @override
  String toString() {
    return 'ExpenseReportResponse(payMethodName: $payMethodName, acTransactionDate: $acTransactionDate, description: $description, invoiceNumber: $invoiceNumber, amount: $amount, accountName: $accountName, rawCount: $rawCount, totalamount: $totalamount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseReportResponseImpl &&
            (identical(other.payMethodName, payMethodName) ||
                other.payMethodName == payMethodName) &&
            (identical(other.acTransactionDate, acTransactionDate) ||
                other.acTransactionDate == acTransactionDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other.invoiceNumber,
              invoiceNumber,
            ) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.rawCount, rawCount) ||
                other.rawCount == rawCount) &&
            (identical(other.totalamount, totalamount) ||
                other.totalamount == totalamount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    payMethodName,
    acTransactionDate,
    description,
    const DeepCollectionEquality().hash(invoiceNumber),
    amount,
    accountName,
    rawCount,
    totalamount,
  );

  /// Create a copy of ExpenseReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseReportResponseImplCopyWith<_$ExpenseReportResponseImpl>
  get copyWith =>
      __$$ExpenseReportResponseImplCopyWithImpl<_$ExpenseReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseReportResponseImplToJson(this);
  }
}

abstract class _ExpenseReportResponse implements ExpenseReportResponse {
  const factory _ExpenseReportResponse({
    @JsonKey(name: "pay_method_name") final String? payMethodName,
    @JsonKey(name: "ac_transaction_date") final String? acTransactionDate,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "invoice_number") final dynamic invoiceNumber,
    @JsonKey(name: "amount", fromJson: parseDouble) final double? amount,
    @JsonKey(name: "account_name") final String? accountName,
    @JsonKey(name: "raw_count") final int? rawCount,
    @JsonKey(name: "totalamount") final String? totalamount,
  }) = _$ExpenseReportResponseImpl;

  factory _ExpenseReportResponse.fromJson(Map<String, dynamic> json) =
      _$ExpenseReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "pay_method_name")
  String? get payMethodName;
  @override
  @JsonKey(name: "ac_transaction_date")
  String? get acTransactionDate;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "invoice_number")
  dynamic get invoiceNumber;
  @override
  @JsonKey(name: "amount", fromJson: parseDouble)
  double? get amount;
  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "raw_count")
  int? get rawCount;
  @override
  @JsonKey(name: "totalamount")
  String? get totalamount;

  /// Create a copy of ExpenseReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseReportResponseImplCopyWith<_$ExpenseReportResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
