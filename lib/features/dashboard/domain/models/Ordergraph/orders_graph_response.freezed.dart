// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrdersGraphResponse _$OrdersGraphResponseFromJson(Map<String, dynamic> json) {
  return _OrdersGraphResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersGraphResponse {
  @JsonKey(name: "monthname")
  String? get monthname => throw _privateConstructorUsedError;
  @JsonKey(name: "ordercount")
  int? get ordercount => throw _privateConstructorUsedError;

  /// Serializes this OrdersGraphResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersGraphResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersGraphResponseCopyWith<OrdersGraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersGraphResponseCopyWith<$Res> {
  factory $OrdersGraphResponseCopyWith(
    OrdersGraphResponse value,
    $Res Function(OrdersGraphResponse) then,
  ) = _$OrdersGraphResponseCopyWithImpl<$Res, OrdersGraphResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "monthname") String? monthname,
    @JsonKey(name: "ordercount") int? ordercount,
  });
}

/// @nodoc
class _$OrdersGraphResponseCopyWithImpl<$Res, $Val extends OrdersGraphResponse>
    implements $OrdersGraphResponseCopyWith<$Res> {
  _$OrdersGraphResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersGraphResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? monthname = freezed, Object? ordercount = freezed}) {
    return _then(
      _value.copyWith(
            monthname: freezed == monthname
                ? _value.monthname
                : monthname // ignore: cast_nullable_to_non_nullable
                      as String?,
            ordercount: freezed == ordercount
                ? _value.ordercount
                : ordercount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrdersGraphResponseImplCopyWith<$Res>
    implements $OrdersGraphResponseCopyWith<$Res> {
  factory _$$OrdersGraphResponseImplCopyWith(
    _$OrdersGraphResponseImpl value,
    $Res Function(_$OrdersGraphResponseImpl) then,
  ) = __$$OrdersGraphResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "monthname") String? monthname,
    @JsonKey(name: "ordercount") int? ordercount,
  });
}

/// @nodoc
class __$$OrdersGraphResponseImplCopyWithImpl<$Res>
    extends _$OrdersGraphResponseCopyWithImpl<$Res, _$OrdersGraphResponseImpl>
    implements _$$OrdersGraphResponseImplCopyWith<$Res> {
  __$$OrdersGraphResponseImplCopyWithImpl(
    _$OrdersGraphResponseImpl _value,
    $Res Function(_$OrdersGraphResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersGraphResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? monthname = freezed, Object? ordercount = freezed}) {
    return _then(
      _$OrdersGraphResponseImpl(
        monthname: freezed == monthname
            ? _value.monthname
            : monthname // ignore: cast_nullable_to_non_nullable
                  as String?,
        ordercount: freezed == ordercount
            ? _value.ordercount
            : ordercount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersGraphResponseImpl implements _OrdersGraphResponse {
  const _$OrdersGraphResponseImpl({
    @JsonKey(name: "monthname") this.monthname,
    @JsonKey(name: "ordercount") this.ordercount,
  });

  factory _$OrdersGraphResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersGraphResponseImplFromJson(json);

  @override
  @JsonKey(name: "monthname")
  final String? monthname;
  @override
  @JsonKey(name: "ordercount")
  final int? ordercount;

  @override
  String toString() {
    return 'OrdersGraphResponse(monthname: $monthname, ordercount: $ordercount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersGraphResponseImpl &&
            (identical(other.monthname, monthname) ||
                other.monthname == monthname) &&
            (identical(other.ordercount, ordercount) ||
                other.ordercount == ordercount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, monthname, ordercount);

  /// Create a copy of OrdersGraphResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersGraphResponseImplCopyWith<_$OrdersGraphResponseImpl> get copyWith =>
      __$$OrdersGraphResponseImplCopyWithImpl<_$OrdersGraphResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersGraphResponseImplToJson(this);
  }
}

abstract class _OrdersGraphResponse implements OrdersGraphResponse {
  const factory _OrdersGraphResponse({
    @JsonKey(name: "monthname") final String? monthname,
    @JsonKey(name: "ordercount") final int? ordercount,
  }) = _$OrdersGraphResponseImpl;

  factory _OrdersGraphResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersGraphResponseImpl.fromJson;

  @override
  @JsonKey(name: "monthname")
  String? get monthname;
  @override
  @JsonKey(name: "ordercount")
  int? get ordercount;

  /// Create a copy of OrdersGraphResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersGraphResponseImplCopyWith<_$OrdersGraphResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
