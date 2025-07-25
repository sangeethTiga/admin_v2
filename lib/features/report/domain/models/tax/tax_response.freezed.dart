// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TaxResponse _$TaxResponseFromJson(Map<String, dynamic> json) {
  return _TaxResponse.fromJson(json);
}

/// @nodoc
mixin _$TaxResponse {
  @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
  double? get totalTaxCollected => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax_paid")
  int? get totalTaxPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "net_payable")
  double? get netPayable => throw _privateConstructorUsedError;

  /// Serializes this TaxResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxResponseCopyWith<TaxResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxResponseCopyWith<$Res> {
  factory $TaxResponseCopyWith(
    TaxResponse value,
    $Res Function(TaxResponse) then,
  ) = _$TaxResponseCopyWithImpl<$Res, TaxResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
    double? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") int? totalTaxPaid,
    @JsonKey(name: "net_payable") double? netPayable,
  });
}

/// @nodoc
class _$TaxResponseCopyWithImpl<$Res, $Val extends TaxResponse>
    implements $TaxResponseCopyWith<$Res> {
  _$TaxResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTaxCollected = freezed,
    Object? totalTaxPaid = freezed,
    Object? netPayable = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalTaxCollected: freezed == totalTaxCollected
                ? _value.totalTaxCollected
                : totalTaxCollected // ignore: cast_nullable_to_non_nullable
                      as double?,
            totalTaxPaid: freezed == totalTaxPaid
                ? _value.totalTaxPaid
                : totalTaxPaid // ignore: cast_nullable_to_non_nullable
                      as int?,
            netPayable: freezed == netPayable
                ? _value.netPayable
                : netPayable // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaxResponseImplCopyWith<$Res>
    implements $TaxResponseCopyWith<$Res> {
  factory _$$TaxResponseImplCopyWith(
    _$TaxResponseImpl value,
    $Res Function(_$TaxResponseImpl) then,
  ) = __$$TaxResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
    double? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") int? totalTaxPaid,
    @JsonKey(name: "net_payable") double? netPayable,
  });
}

/// @nodoc
class __$$TaxResponseImplCopyWithImpl<$Res>
    extends _$TaxResponseCopyWithImpl<$Res, _$TaxResponseImpl>
    implements _$$TaxResponseImplCopyWith<$Res> {
  __$$TaxResponseImplCopyWithImpl(
    _$TaxResponseImpl _value,
    $Res Function(_$TaxResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaxResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTaxCollected = freezed,
    Object? totalTaxPaid = freezed,
    Object? netPayable = freezed,
  }) {
    return _then(
      _$TaxResponseImpl(
        totalTaxCollected: freezed == totalTaxCollected
            ? _value.totalTaxCollected
            : totalTaxCollected // ignore: cast_nullable_to_non_nullable
                  as double?,
        totalTaxPaid: freezed == totalTaxPaid
            ? _value.totalTaxPaid
            : totalTaxPaid // ignore: cast_nullable_to_non_nullable
                  as int?,
        netPayable: freezed == netPayable
            ? _value.netPayable
            : netPayable // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxResponseImpl implements _TaxResponse {
  const _$TaxResponseImpl({
    @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
    this.totalTaxCollected,
    @JsonKey(name: "total_tax_paid") this.totalTaxPaid,
    @JsonKey(name: "net_payable") this.netPayable,
  });

  factory _$TaxResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxResponseImplFromJson(json);

  @override
  @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
  final double? totalTaxCollected;
  @override
  @JsonKey(name: "total_tax_paid")
  final int? totalTaxPaid;
  @override
  @JsonKey(name: "net_payable")
  final double? netPayable;

  @override
  String toString() {
    return 'TaxResponse(totalTaxCollected: $totalTaxCollected, totalTaxPaid: $totalTaxPaid, netPayable: $netPayable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxResponseImpl &&
            (identical(other.totalTaxCollected, totalTaxCollected) ||
                other.totalTaxCollected == totalTaxCollected) &&
            (identical(other.totalTaxPaid, totalTaxPaid) ||
                other.totalTaxPaid == totalTaxPaid) &&
            (identical(other.netPayable, netPayable) ||
                other.netPayable == netPayable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalTaxCollected, totalTaxPaid, netPayable);

  /// Create a copy of TaxResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxResponseImplCopyWith<_$TaxResponseImpl> get copyWith =>
      __$$TaxResponseImplCopyWithImpl<_$TaxResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxResponseImplToJson(this);
  }
}

abstract class _TaxResponse implements TaxResponse {
  const factory _TaxResponse({
    @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
    final double? totalTaxCollected,
    @JsonKey(name: "total_tax_paid") final int? totalTaxPaid,
    @JsonKey(name: "net_payable") final double? netPayable,
  }) = _$TaxResponseImpl;

  factory _TaxResponse.fromJson(Map<String, dynamic> json) =
      _$TaxResponseImpl.fromJson;

  @override
  @JsonKey(name: "total_tax_collected", fromJson: parseNumberAsDouble)
  double? get totalTaxCollected;
  @override
  @JsonKey(name: "total_tax_paid")
  int? get totalTaxPaid;
  @override
  @JsonKey(name: "net_payable")
  double? get netPayable;

  /// Create a copy of TaxResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxResponseImplCopyWith<_$TaxResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
