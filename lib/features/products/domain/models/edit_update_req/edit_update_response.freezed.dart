// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EditUpdateResponse _$EditUpdateResponseFromJson(Map<String, dynamic> json) {
  return _EditUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$EditUpdateResponse {
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "min_order_qty")
  int? get minOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_type_id")
  int? get proTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_price")
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "price_per_unit")
  double? get pricePerUnit => throw _privateConstructorUsedError;

  /// Serializes this EditUpdateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditUpdateResponseCopyWith<EditUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUpdateResponseCopyWith<$Res> {
  factory $EditUpdateResponseCopyWith(
    EditUpdateResponse value,
    $Res Function(EditUpdateResponse) then,
  ) = _$EditUpdateResponseCopyWithImpl<$Res, EditUpdateResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "min_order_qty") int? minOrderQuantity,
    @JsonKey(name: "prod_type_id") int? proTypeId,
    @JsonKey(name: "product_price") double? productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
  });
}

/// @nodoc
class _$EditUpdateResponseCopyWithImpl<$Res, $Val extends EditUpdateResponse>
    implements $EditUpdateResponseCopyWith<$Res> {
  _$EditUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? minOrderQuantity = freezed,
    Object? proTypeId = freezed,
    Object? productPrice = freezed,
    Object? updatedDate = freezed,
    Object? pricePerUnit = freezed,
  }) {
    return _then(
      _value.copyWith(
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            minOrderQuantity: freezed == minOrderQuantity
                ? _value.minOrderQuantity
                : minOrderQuantity // ignore: cast_nullable_to_non_nullable
                      as int?,
            proTypeId: freezed == proTypeId
                ? _value.proTypeId
                : proTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productPrice: freezed == productPrice
                ? _value.productPrice
                : productPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            updatedDate: freezed == updatedDate
                ? _value.updatedDate
                : updatedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            pricePerUnit: freezed == pricePerUnit
                ? _value.pricePerUnit
                : pricePerUnit // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EditUpdateResponseImplCopyWith<$Res>
    implements $EditUpdateResponseCopyWith<$Res> {
  factory _$$EditUpdateResponseImplCopyWith(
    _$EditUpdateResponseImpl value,
    $Res Function(_$EditUpdateResponseImpl) then,
  ) = __$$EditUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "min_order_qty") int? minOrderQuantity,
    @JsonKey(name: "prod_type_id") int? proTypeId,
    @JsonKey(name: "product_price") double? productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") double? pricePerUnit,
  });
}

/// @nodoc
class __$$EditUpdateResponseImplCopyWithImpl<$Res>
    extends _$EditUpdateResponseCopyWithImpl<$Res, _$EditUpdateResponseImpl>
    implements _$$EditUpdateResponseImplCopyWith<$Res> {
  __$$EditUpdateResponseImplCopyWithImpl(
    _$EditUpdateResponseImpl _value,
    $Res Function(_$EditUpdateResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? minOrderQuantity = freezed,
    Object? proTypeId = freezed,
    Object? productPrice = freezed,
    Object? updatedDate = freezed,
    Object? pricePerUnit = freezed,
  }) {
    return _then(
      _$EditUpdateResponseImpl(
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        minOrderQuantity: freezed == minOrderQuantity
            ? _value.minOrderQuantity
            : minOrderQuantity // ignore: cast_nullable_to_non_nullable
                  as int?,
        proTypeId: freezed == proTypeId
            ? _value.proTypeId
            : proTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productPrice: freezed == productPrice
            ? _value.productPrice
            : productPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        updatedDate: freezed == updatedDate
            ? _value.updatedDate
            : updatedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        pricePerUnit: freezed == pricePerUnit
            ? _value.pricePerUnit
            : pricePerUnit // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUpdateResponseImpl implements _EditUpdateResponse {
  const _$EditUpdateResponseImpl({
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "min_order_qty") this.minOrderQuantity,
    @JsonKey(name: "prod_type_id") this.proTypeId,
    @JsonKey(name: "product_price") this.productPrice,
    @JsonKey(name: "updated_date") this.updatedDate,
    @JsonKey(name: "price_per_unit") this.pricePerUnit,
  });

  factory _$EditUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditUpdateResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "min_order_qty")
  final int? minOrderQuantity;
  @override
  @JsonKey(name: "prod_type_id")
  final int? proTypeId;
  @override
  @JsonKey(name: "product_price")
  final double? productPrice;
  @override
  @JsonKey(name: "updated_date")
  final DateTime? updatedDate;
  @override
  @JsonKey(name: "price_per_unit")
  final double? pricePerUnit;

  @override
  String toString() {
    return 'EditUpdateResponse(productName: $productName, minOrderQuantity: $minOrderQuantity, proTypeId: $proTypeId, productPrice: $productPrice, updatedDate: $updatedDate, pricePerUnit: $pricePerUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUpdateResponseImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.minOrderQuantity, minOrderQuantity) ||
                other.minOrderQuantity == minOrderQuantity) &&
            (identical(other.proTypeId, proTypeId) ||
                other.proTypeId == proTypeId) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productName,
    minOrderQuantity,
    proTypeId,
    productPrice,
    updatedDate,
    pricePerUnit,
  );

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUpdateResponseImplCopyWith<_$EditUpdateResponseImpl> get copyWith =>
      __$$EditUpdateResponseImplCopyWithImpl<_$EditUpdateResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUpdateResponseImplToJson(this);
  }
}

abstract class _EditUpdateResponse implements EditUpdateResponse {
  const factory _EditUpdateResponse({
    @JsonKey(name: "product_name") final String? productName,
    @JsonKey(name: "min_order_qty") final int? minOrderQuantity,
    @JsonKey(name: "prod_type_id") final int? proTypeId,
    @JsonKey(name: "product_price") final double? productPrice,
    @JsonKey(name: "updated_date") final DateTime? updatedDate,
    @JsonKey(name: "price_per_unit") final double? pricePerUnit,
  }) = _$EditUpdateResponseImpl;

  factory _EditUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$EditUpdateResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "min_order_qty")
  int? get minOrderQuantity;
  @override
  @JsonKey(name: "prod_type_id")
  int? get proTypeId;
  @override
  @JsonKey(name: "product_price")
  double? get productPrice;
  @override
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate;
  @override
  @JsonKey(name: "price_per_unit")
  double? get pricePerUnit;

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUpdateResponseImplCopyWith<_$EditUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
