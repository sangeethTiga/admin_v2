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
  @JsonKey(name: "product_qty")
  double? get productQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "product_price")
  String? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "maintain_stock")
  int? get maintainStock => throw _privateConstructorUsedError;
  @JsonKey(name: "product_hidden")
  int? get productHidden => throw _privateConstructorUsedError;
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId => throw _privateConstructorUsedError;

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
    @JsonKey(name: "product_qty") double? productQuantity,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_hidden") int? productHidden,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
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
    Object? productQuantity = freezed,
    Object? productPrice = freezed,
    Object? updatedDate = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
    Object? maintainStock = freezed,
    Object? productHidden = freezed,
    Object? mainCategoryId = freezed,
  }) {
    return _then(
      _value.copyWith(
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            productQuantity: freezed == productQuantity
                ? _value.productQuantity
                : productQuantity // ignore: cast_nullable_to_non_nullable
                      as double?,
            productPrice: freezed == productPrice
                ? _value.productPrice
                : productPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedDate: freezed == updatedDate
                ? _value.updatedDate
                : updatedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            maintainStock: freezed == maintainStock
                ? _value.maintainStock
                : maintainStock // ignore: cast_nullable_to_non_nullable
                      as int?,
            productHidden: freezed == productHidden
                ? _value.productHidden
                : productHidden // ignore: cast_nullable_to_non_nullable
                      as int?,
            mainCategoryId: freezed == mainCategoryId
                ? _value.mainCategoryId
                : mainCategoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
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
    @JsonKey(name: "product_qty") double? productQuantity,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "updated_date") DateTime? updatedDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_hidden") int? productHidden,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
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
    Object? productQuantity = freezed,
    Object? productPrice = freezed,
    Object? updatedDate = freezed,
    Object? storeId = freezed,
    Object? productId = freezed,
    Object? maintainStock = freezed,
    Object? productHidden = freezed,
    Object? mainCategoryId = freezed,
  }) {
    return _then(
      _$EditUpdateResponseImpl(
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        productQuantity: freezed == productQuantity
            ? _value.productQuantity
            : productQuantity // ignore: cast_nullable_to_non_nullable
                  as double?,
        productPrice: freezed == productPrice
            ? _value.productPrice
            : productPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedDate: freezed == updatedDate
            ? _value.updatedDate
            : updatedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        maintainStock: freezed == maintainStock
            ? _value.maintainStock
            : maintainStock // ignore: cast_nullable_to_non_nullable
                  as int?,
        productHidden: freezed == productHidden
            ? _value.productHidden
            : productHidden // ignore: cast_nullable_to_non_nullable
                  as int?,
        mainCategoryId: freezed == mainCategoryId
            ? _value.mainCategoryId
            : mainCategoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUpdateResponseImpl implements _EditUpdateResponse {
  const _$EditUpdateResponseImpl({
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "product_qty") this.productQuantity,
    @JsonKey(name: "product_price") this.productPrice,
    @JsonKey(name: "updated_date") this.updatedDate,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "maintain_stock") this.maintainStock,
    @JsonKey(name: "product_hidden") this.productHidden,
    @JsonKey(name: "main_category_id") this.mainCategoryId,
  });

  factory _$EditUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditUpdateResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "product_qty")
  final double? productQuantity;
  @override
  @JsonKey(name: "product_price")
  final String? productPrice;
  @override
  @JsonKey(name: "updated_date")
  final DateTime? updatedDate;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "maintain_stock")
  final int? maintainStock;
  @override
  @JsonKey(name: "product_hidden")
  final int? productHidden;
  @override
  @JsonKey(name: "main_category_id")
  final int? mainCategoryId;

  @override
  String toString() {
    return 'EditUpdateResponse(productName: $productName, productQuantity: $productQuantity, productPrice: $productPrice, updatedDate: $updatedDate, storeId: $storeId, productId: $productId, maintainStock: $maintainStock, productHidden: $productHidden, mainCategoryId: $mainCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUpdateResponseImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.maintainStock, maintainStock) ||
                other.maintainStock == maintainStock) &&
            (identical(other.productHidden, productHidden) ||
                other.productHidden == productHidden) &&
            (identical(other.mainCategoryId, mainCategoryId) ||
                other.mainCategoryId == mainCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productName,
    productQuantity,
    productPrice,
    updatedDate,
    storeId,
    productId,
    maintainStock,
    productHidden,
    mainCategoryId,
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
    @JsonKey(name: "product_qty") final double? productQuantity,
    @JsonKey(name: "product_price") final String? productPrice,
    @JsonKey(name: "updated_date") final DateTime? updatedDate,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "maintain_stock") final int? maintainStock,
    @JsonKey(name: "product_hidden") final int? productHidden,
    @JsonKey(name: "main_category_id") final int? mainCategoryId,
  }) = _$EditUpdateResponseImpl;

  factory _EditUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$EditUpdateResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "product_qty")
  double? get productQuantity;
  @override
  @JsonKey(name: "product_price")
  String? get productPrice;
  @override
  @JsonKey(name: "updated_date")
  DateTime? get updatedDate;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "maintain_stock")
  int? get maintainStock;
  @override
  @JsonKey(name: "product_hidden")
  int? get productHidden;
  @override
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId;

  /// Create a copy of EditUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUpdateResponseImplCopyWith<_$EditUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
