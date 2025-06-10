// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorySales_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategorySalesResponse _$CategorySalesResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CategorySalesResponse.fromJson(json);
}

/// @nodoc
mixin _$CategorySalesResponse {
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_count")
  String? get orderCount => throw _privateConstructorUsedError;

  /// Serializes this CategorySalesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategorySalesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategorySalesResponseCopyWith<CategorySalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySalesResponseCopyWith<$Res> {
  factory $CategorySalesResponseCopyWith(
    CategorySalesResponse value,
    $Res Function(CategorySalesResponse) then,
  ) = _$CategorySalesResponseCopyWithImpl<$Res, CategorySalesResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "total_amount") double? totalAmount,
    @JsonKey(name: "order_count") String? orderCount,
  });
}

/// @nodoc
class _$CategorySalesResponseCopyWithImpl<
  $Res,
  $Val extends CategorySalesResponse
>
    implements $CategorySalesResponseCopyWith<$Res> {
  _$CategorySalesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategorySalesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
    Object? totalAmount = freezed,
    Object? orderCount = freezed,
  }) {
    return _then(
      _value.copyWith(
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalAmount: freezed == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderCount: freezed == orderCount
                ? _value.orderCount
                : orderCount // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategorySalesResponseImplCopyWith<$Res>
    implements $CategorySalesResponseCopyWith<$Res> {
  factory _$$CategorySalesResponseImplCopyWith(
    _$CategorySalesResponseImpl value,
    $Res Function(_$CategorySalesResponseImpl) then,
  ) = __$$CategorySalesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "total_amount") double? totalAmount,
    @JsonKey(name: "order_count") String? orderCount,
  });
}

/// @nodoc
class __$$CategorySalesResponseImplCopyWithImpl<$Res>
    extends
        _$CategorySalesResponseCopyWithImpl<$Res, _$CategorySalesResponseImpl>
    implements _$$CategorySalesResponseImplCopyWith<$Res> {
  __$$CategorySalesResponseImplCopyWithImpl(
    _$CategorySalesResponseImpl _value,
    $Res Function(_$CategorySalesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategorySalesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
    Object? totalAmount = freezed,
    Object? orderCount = freezed,
  }) {
    return _then(
      _$CategorySalesResponseImpl(
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalAmount: freezed == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderCount: freezed == orderCount
            ? _value.orderCount
            : orderCount // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategorySalesResponseImpl implements _CategorySalesResponse {
  const _$CategorySalesResponseImpl({
    @JsonKey(name: "category_name") this.categoryName,
    @JsonKey(name: "total_amount") this.totalAmount,
    @JsonKey(name: "order_count") this.orderCount,
  });

  factory _$CategorySalesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategorySalesResponseImplFromJson(json);

  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "order_count")
  final String? orderCount;

  @override
  String toString() {
    return 'CategorySalesResponse(categoryName: $categoryName, totalAmount: $totalAmount, orderCount: $orderCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySalesResponseImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryName, totalAmount, orderCount);

  /// Create a copy of CategorySalesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySalesResponseImplCopyWith<_$CategorySalesResponseImpl>
  get copyWith =>
      __$$CategorySalesResponseImplCopyWithImpl<_$CategorySalesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategorySalesResponseImplToJson(this);
  }
}

abstract class _CategorySalesResponse implements CategorySalesResponse {
  const factory _CategorySalesResponse({
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "total_amount") final double? totalAmount,
    @JsonKey(name: "order_count") final String? orderCount,
  }) = _$CategorySalesResponseImpl;

  factory _CategorySalesResponse.fromJson(Map<String, dynamic> json) =
      _$CategorySalesResponseImpl.fromJson;

  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "order_count")
  String? get orderCount;

  /// Create a copy of CategorySalesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySalesResponseImplCopyWith<_$CategorySalesResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
