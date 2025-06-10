// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StockStatusResponse _$StockStatusResponseFromJson(Map<String, dynamic> json) {
  return _StockStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$StockStatusResponse {
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_item_condition_name")
  String? get productItemConditionName => throw _privateConstructorUsedError;

  /// Serializes this StockStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockStatusResponseCopyWith<StockStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStatusResponseCopyWith<$Res> {
  factory $StockStatusResponseCopyWith(
    StockStatusResponse value,
    $Res Function(StockStatusResponse) then,
  ) = _$StockStatusResponseCopyWithImpl<$Res, StockStatusResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  });
}

/// @nodoc
class _$StockStatusResponseCopyWithImpl<$Res, $Val extends StockStatusResponse>
    implements $StockStatusResponseCopyWith<$Res> {
  _$StockStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemConditionId = freezed,
    Object? productItemConditionName = freezed,
  }) {
    return _then(
      _value.copyWith(
            productItemConditionId: freezed == productItemConditionId
                ? _value.productItemConditionId
                : productItemConditionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productItemConditionName: freezed == productItemConditionName
                ? _value.productItemConditionName
                : productItemConditionName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StockStatusResponseImplCopyWith<$Res>
    implements $StockStatusResponseCopyWith<$Res> {
  factory _$$StockStatusResponseImplCopyWith(
    _$StockStatusResponseImpl value,
    $Res Function(_$StockStatusResponseImpl) then,
  ) = __$$StockStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  });
}

/// @nodoc
class __$$StockStatusResponseImplCopyWithImpl<$Res>
    extends _$StockStatusResponseCopyWithImpl<$Res, _$StockStatusResponseImpl>
    implements _$$StockStatusResponseImplCopyWith<$Res> {
  __$$StockStatusResponseImplCopyWithImpl(
    _$StockStatusResponseImpl _value,
    $Res Function(_$StockStatusResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemConditionId = freezed,
    Object? productItemConditionName = freezed,
  }) {
    return _then(
      _$StockStatusResponseImpl(
        productItemConditionId: freezed == productItemConditionId
            ? _value.productItemConditionId
            : productItemConditionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productItemConditionName: freezed == productItemConditionName
            ? _value.productItemConditionName
            : productItemConditionName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StockStatusResponseImpl implements _StockStatusResponse {
  const _$StockStatusResponseImpl({
    @JsonKey(name: "product_item_condition_id") this.productItemConditionId,
    @JsonKey(name: "product_item_condition_name") this.productItemConditionName,
  });

  factory _$StockStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_item_condition_id")
  final int? productItemConditionId;
  @override
  @JsonKey(name: "product_item_condition_name")
  final String? productItemConditionName;

  @override
  String toString() {
    return 'StockStatusResponse(productItemConditionId: $productItemConditionId, productItemConditionName: $productItemConditionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockStatusResponseImpl &&
            (identical(other.productItemConditionId, productItemConditionId) ||
                other.productItemConditionId == productItemConditionId) &&
            (identical(
                  other.productItemConditionName,
                  productItemConditionName,
                ) ||
                other.productItemConditionName == productItemConditionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productItemConditionId,
    productItemConditionName,
  );

  /// Create a copy of StockStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockStatusResponseImplCopyWith<_$StockStatusResponseImpl> get copyWith =>
      __$$StockStatusResponseImplCopyWithImpl<_$StockStatusResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StockStatusResponseImplToJson(this);
  }
}

abstract class _StockStatusResponse implements StockStatusResponse {
  const factory _StockStatusResponse({
    @JsonKey(name: "product_item_condition_id")
    final int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    final String? productItemConditionName,
  }) = _$StockStatusResponseImpl;

  factory _StockStatusResponse.fromJson(Map<String, dynamic> json) =
      _$StockStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId;
  @override
  @JsonKey(name: "product_item_condition_name")
  String? get productItemConditionName;

  /// Create a copy of StockStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockStatusResponseImplCopyWith<_$StockStatusResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
