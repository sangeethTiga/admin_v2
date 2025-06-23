// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_code")
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_price")
  String? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "maintain_stock")
  int? get maintainStock => throw _privateConstructorUsedError;
  @JsonKey(name: "product_qty")
  double? get productQty => throw _privateConstructorUsedError;
  @JsonKey(name: "is_hidden")
  int? get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: "is_variant")
  int? get isVariant => throw _privateConstructorUsedError;
  @JsonKey(name: "is_price_editable")
  int? get isPriceEditable => throw _privateConstructorUsedError;
  @JsonKey(name: "rawcount")
  int? get rawcount => throw _privateConstructorUsedError;
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "product_unit_id")
  int? get productUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_unit_name")
  String? get productUnitName => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
    ProductResponse value,
    $Res Function(ProductResponse) then,
  ) = _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "product_code") String? productCode,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_qty") double? productQty,
    @JsonKey(name: "is_hidden") int? isHidden,
    @JsonKey(name: "is_variant") int? isVariant,
    @JsonKey(name: "is_price_editable") int? isPriceEditable,
    @JsonKey(name: "rawcount") int? rawcount,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "product_unit_id") int? productUnitId,
    @JsonKey(name: "product_unit_name") String? productUnitName,
  });
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productCode = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? productPrice = freezed,
    Object? maintainStock = freezed,
    Object? productQty = freezed,
    Object? isHidden = freezed,
    Object? isVariant = freezed,
    Object? isPriceEditable = freezed,
    Object? rawcount = freezed,
    Object? mainCategoryId = freezed,
    Object? images = freezed,
    Object? productUnitId = freezed,
    Object? productUnitName = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            productCode: freezed == productCode
                ? _value.productCode
                : productCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            productPrice: freezed == productPrice
                ? _value.productPrice
                : productPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            maintainStock: freezed == maintainStock
                ? _value.maintainStock
                : maintainStock // ignore: cast_nullable_to_non_nullable
                      as int?,
            productQty: freezed == productQty
                ? _value.productQty
                : productQty // ignore: cast_nullable_to_non_nullable
                      as double?,
            isHidden: freezed == isHidden
                ? _value.isHidden
                : isHidden // ignore: cast_nullable_to_non_nullable
                      as int?,
            isVariant: freezed == isVariant
                ? _value.isVariant
                : isVariant // ignore: cast_nullable_to_non_nullable
                      as int?,
            isPriceEditable: freezed == isPriceEditable
                ? _value.isPriceEditable
                : isPriceEditable // ignore: cast_nullable_to_non_nullable
                      as int?,
            rawcount: freezed == rawcount
                ? _value.rawcount
                : rawcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            mainCategoryId: freezed == mainCategoryId
                ? _value.mainCategoryId
                : mainCategoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<Image>?,
            productUnitId: freezed == productUnitId
                ? _value.productUnitId
                : productUnitId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productUnitName: freezed == productUnitName
                ? _value.productUnitName
                : productUnitName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(
    _$ProductResponseImpl value,
    $Res Function(_$ProductResponseImpl) then,
  ) = __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "product_code") String? productCode,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "maintain_stock") int? maintainStock,
    @JsonKey(name: "product_qty") double? productQty,
    @JsonKey(name: "is_hidden") int? isHidden,
    @JsonKey(name: "is_variant") int? isVariant,
    @JsonKey(name: "is_price_editable") int? isPriceEditable,
    @JsonKey(name: "rawcount") int? rawcount,
    @JsonKey(name: "main_category_id") int? mainCategoryId,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "product_unit_id") int? productUnitId,
    @JsonKey(name: "product_unit_name") String? productUnitName,
  });
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
    _$ProductResponseImpl _value,
    $Res Function(_$ProductResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productCode = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? productPrice = freezed,
    Object? maintainStock = freezed,
    Object? productQty = freezed,
    Object? isHidden = freezed,
    Object? isVariant = freezed,
    Object? isPriceEditable = freezed,
    Object? rawcount = freezed,
    Object? mainCategoryId = freezed,
    Object? images = freezed,
    Object? productUnitId = freezed,
    Object? productUnitName = freezed,
  }) {
    return _then(
      _$ProductResponseImpl(
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        productCode: freezed == productCode
            ? _value.productCode
            : productCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        productPrice: freezed == productPrice
            ? _value.productPrice
            : productPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        maintainStock: freezed == maintainStock
            ? _value.maintainStock
            : maintainStock // ignore: cast_nullable_to_non_nullable
                  as int?,
        productQty: freezed == productQty
            ? _value.productQty
            : productQty // ignore: cast_nullable_to_non_nullable
                  as double?,
        isHidden: freezed == isHidden
            ? _value.isHidden
            : isHidden // ignore: cast_nullable_to_non_nullable
                  as int?,
        isVariant: freezed == isVariant
            ? _value.isVariant
            : isVariant // ignore: cast_nullable_to_non_nullable
                  as int?,
        isPriceEditable: freezed == isPriceEditable
            ? _value.isPriceEditable
            : isPriceEditable // ignore: cast_nullable_to_non_nullable
                  as int?,
        rawcount: freezed == rawcount
            ? _value.rawcount
            : rawcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        mainCategoryId: freezed == mainCategoryId
            ? _value.mainCategoryId
            : mainCategoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<Image>?,
        productUnitId: freezed == productUnitId
            ? _value.productUnitId
            : productUnitId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productUnitName: freezed == productUnitName
            ? _value.productUnitName
            : productUnitName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl({
    @JsonKey(name: "product_id") this.productId,
    @JsonKey(name: "product_name") this.productName,
    @JsonKey(name: "product_code") this.productCode,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "product_price") this.productPrice,
    @JsonKey(name: "maintain_stock") this.maintainStock,
    @JsonKey(name: "product_qty") this.productQty,
    @JsonKey(name: "is_hidden") this.isHidden,
    @JsonKey(name: "is_variant") this.isVariant,
    @JsonKey(name: "is_price_editable") this.isPriceEditable,
    @JsonKey(name: "rawcount") this.rawcount,
    @JsonKey(name: "main_category_id") this.mainCategoryId,
    @JsonKey(name: "images") final List<Image>? images,
    @JsonKey(name: "product_unit_id") this.productUnitId,
    @JsonKey(name: "product_unit_name") this.productUnitName,
  }) : _images = images;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "product_code")
  final String? productCode;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "product_price")
  final String? productPrice;
  @override
  @JsonKey(name: "maintain_stock")
  final int? maintainStock;
  @override
  @JsonKey(name: "product_qty")
  final double? productQty;
  @override
  @JsonKey(name: "is_hidden")
  final int? isHidden;
  @override
  @JsonKey(name: "is_variant")
  final int? isVariant;
  @override
  @JsonKey(name: "is_price_editable")
  final int? isPriceEditable;
  @override
  @JsonKey(name: "rawcount")
  final int? rawcount;
  @override
  @JsonKey(name: "main_category_id")
  final int? mainCategoryId;
  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "product_unit_id")
  final int? productUnitId;
  @override
  @JsonKey(name: "product_unit_name")
  final String? productUnitName;

  @override
  String toString() {
    return 'ProductResponse(productId: $productId, productName: $productName, productCode: $productCode, storeId: $storeId, storeName: $storeName, productPrice: $productPrice, maintainStock: $maintainStock, productQty: $productQty, isHidden: $isHidden, isVariant: $isVariant, isPriceEditable: $isPriceEditable, rawcount: $rawcount, mainCategoryId: $mainCategoryId, images: $images, productUnitId: $productUnitId, productUnitName: $productUnitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.maintainStock, maintainStock) ||
                other.maintainStock == maintainStock) &&
            (identical(other.productQty, productQty) ||
                other.productQty == productQty) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isVariant, isVariant) ||
                other.isVariant == isVariant) &&
            (identical(other.isPriceEditable, isPriceEditable) ||
                other.isPriceEditable == isPriceEditable) &&
            (identical(other.rawcount, rawcount) ||
                other.rawcount == rawcount) &&
            (identical(other.mainCategoryId, mainCategoryId) ||
                other.mainCategoryId == mainCategoryId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.productUnitId, productUnitId) ||
                other.productUnitId == productUnitId) &&
            (identical(other.productUnitName, productUnitName) ||
                other.productUnitName == productUnitName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    productName,
    productCode,
    storeId,
    storeName,
    productPrice,
    maintainStock,
    productQty,
    isHidden,
    isVariant,
    isPriceEditable,
    rawcount,
    mainCategoryId,
    const DeepCollectionEquality().hash(_images),
    productUnitId,
    productUnitName,
  );

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse({
    @JsonKey(name: "product_id") final int? productId,
    @JsonKey(name: "product_name") final String? productName,
    @JsonKey(name: "product_code") final String? productCode,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "product_price") final String? productPrice,
    @JsonKey(name: "maintain_stock") final int? maintainStock,
    @JsonKey(name: "product_qty") final double? productQty,
    @JsonKey(name: "is_hidden") final int? isHidden,
    @JsonKey(name: "is_variant") final int? isVariant,
    @JsonKey(name: "is_price_editable") final int? isPriceEditable,
    @JsonKey(name: "rawcount") final int? rawcount,
    @JsonKey(name: "main_category_id") final int? mainCategoryId,
    @JsonKey(name: "images") final List<Image>? images,
    @JsonKey(name: "product_unit_id") final int? productUnitId,
    @JsonKey(name: "product_unit_name") final String? productUnitName,
  }) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "product_code")
  String? get productCode;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "product_price")
  String? get productPrice;
  @override
  @JsonKey(name: "maintain_stock")
  int? get maintainStock;
  @override
  @JsonKey(name: "product_qty")
  double? get productQty;
  @override
  @JsonKey(name: "is_hidden")
  int? get isHidden;
  @override
  @JsonKey(name: "is_variant")
  int? get isVariant;
  @override
  @JsonKey(name: "is_price_editable")
  int? get isPriceEditable;
  @override
  @JsonKey(name: "rawcount")
  int? get rawcount;
  @override
  @JsonKey(name: "main_category_id")
  int? get mainCategoryId;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;
  @override
  @JsonKey(name: "product_unit_id")
  int? get productUnitId;
  @override
  @JsonKey(name: "product_unit_name")
  String? get productUnitName;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "product_img_id")
  int? get productImgId => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_id")
  int? get resourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_var_id")
  int? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "Large")
  String? get large => throw _privateConstructorUsedError;
  @JsonKey(name: "Medium")
  String? get medium => throw _privateConstructorUsedError;
  @JsonKey(name: "Small")
  String? get small => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({
    @JsonKey(name: "product_img_id") int? productImgId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Small") String? small,
  });
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productImgId = freezed,
    Object? resourceId = freezed,
    Object? prodVarId = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
  }) {
    return _then(
      _value.copyWith(
            productImgId: freezed == productImgId
                ? _value.productImgId
                : productImgId // ignore: cast_nullable_to_non_nullable
                      as int?,
            resourceId: freezed == resourceId
                ? _value.resourceId
                : resourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            prodVarId: freezed == prodVarId
                ? _value.prodVarId
                : prodVarId // ignore: cast_nullable_to_non_nullable
                      as int?,
            large: freezed == large
                ? _value.large
                : large // ignore: cast_nullable_to_non_nullable
                      as String?,
            medium: freezed == medium
                ? _value.medium
                : medium // ignore: cast_nullable_to_non_nullable
                      as String?,
            small: freezed == small
                ? _value.small
                : small // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
    _$ImageImpl value,
    $Res Function(_$ImageImpl) then,
  ) = __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_img_id") int? productImgId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "prod_var_id") int? prodVarId,
    @JsonKey(name: "Large") String? large,
    @JsonKey(name: "Medium") String? medium,
    @JsonKey(name: "Small") String? small,
  });
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
    _$ImageImpl _value,
    $Res Function(_$ImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productImgId = freezed,
    Object? resourceId = freezed,
    Object? prodVarId = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
  }) {
    return _then(
      _$ImageImpl(
        productImgId: freezed == productImgId
            ? _value.productImgId
            : productImgId // ignore: cast_nullable_to_non_nullable
                  as int?,
        resourceId: freezed == resourceId
            ? _value.resourceId
            : resourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        prodVarId: freezed == prodVarId
            ? _value.prodVarId
            : prodVarId // ignore: cast_nullable_to_non_nullable
                  as int?,
        large: freezed == large
            ? _value.large
            : large // ignore: cast_nullable_to_non_nullable
                  as String?,
        medium: freezed == medium
            ? _value.medium
            : medium // ignore: cast_nullable_to_non_nullable
                  as String?,
        small: freezed == small
            ? _value.small
            : small // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl({
    @JsonKey(name: "product_img_id") this.productImgId,
    @JsonKey(name: "resource_id") this.resourceId,
    @JsonKey(name: "prod_var_id") this.prodVarId,
    @JsonKey(name: "Large") this.large,
    @JsonKey(name: "Medium") this.medium,
    @JsonKey(name: "Small") this.small,
  });

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "product_img_id")
  final int? productImgId;
  @override
  @JsonKey(name: "resource_id")
  final int? resourceId;
  @override
  @JsonKey(name: "prod_var_id")
  final int? prodVarId;
  @override
  @JsonKey(name: "Large")
  final String? large;
  @override
  @JsonKey(name: "Medium")
  final String? medium;
  @override
  @JsonKey(name: "Small")
  final String? small;

  @override
  String toString() {
    return 'Image(productImgId: $productImgId, resourceId: $resourceId, prodVarId: $prodVarId, large: $large, medium: $medium, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.productImgId, productImgId) ||
                other.productImgId == productImgId) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productImgId,
    resourceId,
    prodVarId,
    large,
    medium,
    small,
  );

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(this);
  }
}

abstract class _Image implements Image {
  const factory _Image({
    @JsonKey(name: "product_img_id") final int? productImgId,
    @JsonKey(name: "resource_id") final int? resourceId,
    @JsonKey(name: "prod_var_id") final int? prodVarId,
    @JsonKey(name: "Large") final String? large,
    @JsonKey(name: "Medium") final String? medium,
    @JsonKey(name: "Small") final String? small,
  }) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "product_img_id")
  int? get productImgId;
  @override
  @JsonKey(name: "resource_id")
  int? get resourceId;
  @override
  @JsonKey(name: "prod_var_id")
  int? get prodVarId;
  @override
  @JsonKey(name: "Large")
  String? get large;
  @override
  @JsonKey(name: "Medium")
  String? get medium;
  @override
  @JsonKey(name: "Small")
  String? get small;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
