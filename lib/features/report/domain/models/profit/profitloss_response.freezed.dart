// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profitloss_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfitlossResponse _$ProfitlossResponseFromJson(Map<String, dynamic> json) {
  return _ProfitlossResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfitlossResponse {
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData => throw _privateConstructorUsedError;

  /// Serializes this ProfitlossResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfitlossResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfitlossResponseCopyWith<ProfitlossResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfitlossResponseCopyWith<$Res> {
  factory $ProfitlossResponseCopyWith(
    ProfitlossResponse value,
    $Res Function(ProfitlossResponse) then,
  ) = _$ProfitlossResponseCopyWithImpl<$Res, ProfitlossResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "receipts_data") List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") List<Datum>? paymentData,
  });
}

/// @nodoc
class _$ProfitlossResponseCopyWithImpl<$Res, $Val extends ProfitlossResponse>
    implements $ProfitlossResponseCopyWith<$Res> {
  _$ProfitlossResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfitlossResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? receiptsData = freezed, Object? paymentData = freezed}) {
    return _then(
      _value.copyWith(
            receiptsData: freezed == receiptsData
                ? _value.receiptsData
                : receiptsData // ignore: cast_nullable_to_non_nullable
                      as List<Datum>?,
            paymentData: freezed == paymentData
                ? _value.paymentData
                : paymentData // ignore: cast_nullable_to_non_nullable
                      as List<Datum>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfitlossResponseImplCopyWith<$Res>
    implements $ProfitlossResponseCopyWith<$Res> {
  factory _$$ProfitlossResponseImplCopyWith(
    _$ProfitlossResponseImpl value,
    $Res Function(_$ProfitlossResponseImpl) then,
  ) = __$$ProfitlossResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "receipts_data") List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") List<Datum>? paymentData,
  });
}

/// @nodoc
class __$$ProfitlossResponseImplCopyWithImpl<$Res>
    extends _$ProfitlossResponseCopyWithImpl<$Res, _$ProfitlossResponseImpl>
    implements _$$ProfitlossResponseImplCopyWith<$Res> {
  __$$ProfitlossResponseImplCopyWithImpl(
    _$ProfitlossResponseImpl _value,
    $Res Function(_$ProfitlossResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfitlossResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? receiptsData = freezed, Object? paymentData = freezed}) {
    return _then(
      _$ProfitlossResponseImpl(
        receiptsData: freezed == receiptsData
            ? _value._receiptsData
            : receiptsData // ignore: cast_nullable_to_non_nullable
                  as List<Datum>?,
        paymentData: freezed == paymentData
            ? _value._paymentData
            : paymentData // ignore: cast_nullable_to_non_nullable
                  as List<Datum>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfitlossResponseImpl implements _ProfitlossResponse {
  const _$ProfitlossResponseImpl({
    @JsonKey(name: "receipts_data") final List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") final List<Datum>? paymentData,
  }) : _receiptsData = receiptsData,
       _paymentData = paymentData;

  factory _$ProfitlossResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfitlossResponseImplFromJson(json);

  final List<Datum>? _receiptsData;
  @override
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData {
    final value = _receiptsData;
    if (value == null) return null;
    if (_receiptsData is EqualUnmodifiableListView) return _receiptsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Datum>? _paymentData;
  @override
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData {
    final value = _paymentData;
    if (value == null) return null;
    if (_paymentData is EqualUnmodifiableListView) return _paymentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfitlossResponse(receiptsData: $receiptsData, paymentData: $paymentData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfitlossResponseImpl &&
            const DeepCollectionEquality().equals(
              other._receiptsData,
              _receiptsData,
            ) &&
            const DeepCollectionEquality().equals(
              other._paymentData,
              _paymentData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_receiptsData),
    const DeepCollectionEquality().hash(_paymentData),
  );

  /// Create a copy of ProfitlossResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfitlossResponseImplCopyWith<_$ProfitlossResponseImpl> get copyWith =>
      __$$ProfitlossResponseImplCopyWithImpl<_$ProfitlossResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfitlossResponseImplToJson(this);
  }
}

abstract class _ProfitlossResponse implements ProfitlossResponse {
  const factory _ProfitlossResponse({
    @JsonKey(name: "receipts_data") final List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") final List<Datum>? paymentData,
  }) = _$ProfitlossResponseImpl;

  factory _ProfitlossResponse.fromJson(Map<String, dynamic> json) =
      _$ProfitlossResponseImpl.fromJson;

  @override
  @JsonKey(name: "receipts_data")
  List<Datum>? get receiptsData;
  @override
  @JsonKey(name: "payment_data")
  List<Datum>? get paymentData;

  /// Create a copy of ProfitlossResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfitlossResponseImplCopyWith<_$ProfitlossResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "account_head_name")
  String? get accountHeadName => throw _privateConstructorUsedError;
  @JsonKey(name: "amount", fromJson: parseDouble)
  double? get amount => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount", fromJson: parseDouble) double? amount,
  });
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accountHeadName = freezed, Object? amount = freezed}) {
    return _then(
      _value.copyWith(
            accountHeadName: freezed == accountHeadName
                ? _value.accountHeadName
                : accountHeadName // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
    _$DatumImpl value,
    $Res Function(_$DatumImpl) then,
  ) = __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount", fromJson: parseDouble) double? amount,
  });
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
    _$DatumImpl _value,
    $Res Function(_$DatumImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accountHeadName = freezed, Object? amount = freezed}) {
    return _then(
      _$DatumImpl(
        accountHeadName: freezed == accountHeadName
            ? _value.accountHeadName
            : accountHeadName // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl({
    @JsonKey(name: "account_head_name") this.accountHeadName,
    @JsonKey(name: "amount", fromJson: parseDouble) this.amount,
  });

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "account_head_name")
  final String? accountHeadName;
  @override
  @JsonKey(name: "amount", fromJson: parseDouble)
  final double? amount;

  @override
  String toString() {
    return 'Datum(accountHeadName: $accountHeadName, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.accountHeadName, accountHeadName) ||
                other.accountHeadName == accountHeadName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountHeadName, amount);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(this);
  }
}

abstract class _Datum implements Datum {
  const factory _Datum({
    @JsonKey(name: "account_head_name") final String? accountHeadName,
    @JsonKey(name: "amount", fromJson: parseDouble) final double? amount,
  }) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "account_head_name")
  String? get accountHeadName;
  @override
  @JsonKey(name: "amount", fromJson: parseDouble)
  double? get amount;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
