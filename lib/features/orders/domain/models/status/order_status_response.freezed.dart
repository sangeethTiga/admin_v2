// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderStatusResponse _$OrderStatusResponseFromJson(Map<String, dynamic> json) {
  return _OrderStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusResponse {
  @JsonKey(name: "order_status_id")
  int? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_name")
  String? get orderStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName => throw _privateConstructorUsedError;

  /// Serializes this OrderStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusResponseCopyWith<OrderStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusResponseCopyWith<$Res> {
  factory $OrderStatusResponseCopyWith(
    OrderStatusResponse value,
    $Res Function(OrderStatusResponse) then,
  ) = _$OrderStatusResponseCopyWithImpl<$Res, OrderStatusResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  });
}

/// @nodoc
class _$OrderStatusResponseCopyWithImpl<$Res, $Val extends OrderStatusResponse>
    implements $OrderStatusResponseCopyWith<$Res> {
  _$OrderStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderStatusArabicName = freezed,
  }) {
    return _then(
      _value.copyWith(
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderStatusName: freezed == orderStatusName
                ? _value.orderStatusName
                : orderStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderStatusArabicName: freezed == orderStatusArabicName
                ? _value.orderStatusArabicName
                : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderStatusResponseImplCopyWith<$Res>
    implements $OrderStatusResponseCopyWith<$Res> {
  factory _$$OrderStatusResponseImplCopyWith(
    _$OrderStatusResponseImpl value,
    $Res Function(_$OrderStatusResponseImpl) then,
  ) = __$$OrderStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "order_status_id") int? orderStatusId,
    @JsonKey(name: "order_status_name") String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name") String? orderStatusArabicName,
  });
}

/// @nodoc
class __$$OrderStatusResponseImplCopyWithImpl<$Res>
    extends _$OrderStatusResponseCopyWithImpl<$Res, _$OrderStatusResponseImpl>
    implements _$$OrderStatusResponseImplCopyWith<$Res> {
  __$$OrderStatusResponseImplCopyWithImpl(
    _$OrderStatusResponseImpl _value,
    $Res Function(_$OrderStatusResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatusId = freezed,
    Object? orderStatusName = freezed,
    Object? orderStatusArabicName = freezed,
  }) {
    return _then(
      _$OrderStatusResponseImpl(
        orderStatusId: freezed == orderStatusId
            ? _value.orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderStatusName: freezed == orderStatusName
            ? _value.orderStatusName
            : orderStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderStatusArabicName: freezed == orderStatusArabicName
            ? _value.orderStatusArabicName
            : orderStatusArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusResponseImpl implements _OrderStatusResponse {
  const _$OrderStatusResponseImpl({
    @JsonKey(name: "order_status_id") this.orderStatusId,
    @JsonKey(name: "order_status_name") this.orderStatusName,
    @JsonKey(name: "order_status_arabic_name") this.orderStatusArabicName,
  });

  factory _$OrderStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: "order_status_id")
  final int? orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  final String? orderStatusName;
  @override
  @JsonKey(name: "order_status_arabic_name")
  final String? orderStatusArabicName;

  @override
  String toString() {
    return 'OrderStatusResponse(orderStatusId: $orderStatusId, orderStatusName: $orderStatusName, orderStatusArabicName: $orderStatusArabicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusResponseImpl &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName) &&
            (identical(other.orderStatusArabicName, orderStatusArabicName) ||
                other.orderStatusArabicName == orderStatusArabicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderStatusId,
    orderStatusName,
    orderStatusArabicName,
  );

  /// Create a copy of OrderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusResponseImplCopyWith<_$OrderStatusResponseImpl> get copyWith =>
      __$$OrderStatusResponseImplCopyWithImpl<_$OrderStatusResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusResponseImplToJson(this);
  }
}

abstract class _OrderStatusResponse implements OrderStatusResponse {
  const factory _OrderStatusResponse({
    @JsonKey(name: "order_status_id") final int? orderStatusId,
    @JsonKey(name: "order_status_name") final String? orderStatusName,
    @JsonKey(name: "order_status_arabic_name")
    final String? orderStatusArabicName,
  }) = _$OrderStatusResponseImpl;

  factory _OrderStatusResponse.fromJson(Map<String, dynamic> json) =
      _$OrderStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: "order_status_id")
  int? get orderStatusId;
  @override
  @JsonKey(name: "order_status_name")
  String? get orderStatusName;
  @override
  @JsonKey(name: "order_status_arabic_name")
  String? get orderStatusArabicName;

  /// Create a copy of OrderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusResponseImplCopyWith<_$OrderStatusResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
