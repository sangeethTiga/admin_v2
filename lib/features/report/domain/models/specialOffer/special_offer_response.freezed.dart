// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_offer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpecialOfferResponse _$SpecialOfferResponseFromJson(Map<String, dynamic> json) {
  return _SpecialOfferResponse.fromJson(json);
}

/// @nodoc
mixin _$SpecialOfferResponse {
  @JsonKey(name: "prod_offer_type_id")
  int? get prodOfferTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_id")
  int? get resourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type_img")
  String? get offerTypeImg => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_slug")
  String? get offerSlug => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type_arabic_name")
  String? get offerTypeArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "from_date")
  dynamic get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to_date")
  dynamic get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type_name")
  String? get offerTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;

  /// Serializes this SpecialOfferResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialOfferResponseCopyWith<SpecialOfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialOfferResponseCopyWith<$Res> {
  factory $SpecialOfferResponseCopyWith(
    SpecialOfferResponse value,
    $Res Function(SpecialOfferResponse) then,
  ) = _$SpecialOfferResponseCopyWithImpl<$Res, SpecialOfferResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "prod_offer_type_id") int? prodOfferTypeId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "offer_type_img") String? offerTypeImg,
    @JsonKey(name: "offer_slug") String? offerSlug,
    @JsonKey(name: "offer_type_arabic_name") String? offerTypeArabicName,
    @JsonKey(name: "from_date") dynamic fromDate,
    @JsonKey(name: "to_date") dynamic toDate,
    @JsonKey(name: "offer_type_name") String? offerTypeName,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "store_name") String? storeName,
  });
}

/// @nodoc
class _$SpecialOfferResponseCopyWithImpl<
  $Res,
  $Val extends SpecialOfferResponse
>
    implements $SpecialOfferResponseCopyWith<$Res> {
  _$SpecialOfferResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOfferTypeId = freezed,
    Object? storeId = freezed,
    Object? resourceId = freezed,
    Object? offerTypeImg = freezed,
    Object? offerSlug = freezed,
    Object? offerTypeArabicName = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? offerTypeName = freezed,
    Object? createdAt = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _value.copyWith(
            prodOfferTypeId: freezed == prodOfferTypeId
                ? _value.prodOfferTypeId
                : prodOfferTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            resourceId: freezed == resourceId
                ? _value.resourceId
                : resourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerTypeImg: freezed == offerTypeImg
                ? _value.offerTypeImg
                : offerTypeImg // ignore: cast_nullable_to_non_nullable
                      as String?,
            offerSlug: freezed == offerSlug
                ? _value.offerSlug
                : offerSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            offerTypeArabicName: freezed == offerTypeArabicName
                ? _value.offerTypeArabicName
                : offerTypeArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            fromDate: freezed == fromDate
                ? _value.fromDate
                : fromDate // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            toDate: freezed == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            offerTypeName: freezed == offerTypeName
                ? _value.offerTypeName
                : offerTypeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpecialOfferResponseImplCopyWith<$Res>
    implements $SpecialOfferResponseCopyWith<$Res> {
  factory _$$SpecialOfferResponseImplCopyWith(
    _$SpecialOfferResponseImpl value,
    $Res Function(_$SpecialOfferResponseImpl) then,
  ) = __$$SpecialOfferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "prod_offer_type_id") int? prodOfferTypeId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "offer_type_img") String? offerTypeImg,
    @JsonKey(name: "offer_slug") String? offerSlug,
    @JsonKey(name: "offer_type_arabic_name") String? offerTypeArabicName,
    @JsonKey(name: "from_date") dynamic fromDate,
    @JsonKey(name: "to_date") dynamic toDate,
    @JsonKey(name: "offer_type_name") String? offerTypeName,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "store_name") String? storeName,
  });
}

/// @nodoc
class __$$SpecialOfferResponseImplCopyWithImpl<$Res>
    extends _$SpecialOfferResponseCopyWithImpl<$Res, _$SpecialOfferResponseImpl>
    implements _$$SpecialOfferResponseImplCopyWith<$Res> {
  __$$SpecialOfferResponseImplCopyWithImpl(
    _$SpecialOfferResponseImpl _value,
    $Res Function(_$SpecialOfferResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpecialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodOfferTypeId = freezed,
    Object? storeId = freezed,
    Object? resourceId = freezed,
    Object? offerTypeImg = freezed,
    Object? offerSlug = freezed,
    Object? offerTypeArabicName = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? offerTypeName = freezed,
    Object? createdAt = freezed,
    Object? storeName = freezed,
  }) {
    return _then(
      _$SpecialOfferResponseImpl(
        prodOfferTypeId: freezed == prodOfferTypeId
            ? _value.prodOfferTypeId
            : prodOfferTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        resourceId: freezed == resourceId
            ? _value.resourceId
            : resourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerTypeImg: freezed == offerTypeImg
            ? _value.offerTypeImg
            : offerTypeImg // ignore: cast_nullable_to_non_nullable
                  as String?,
        offerSlug: freezed == offerSlug
            ? _value.offerSlug
            : offerSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        offerTypeArabicName: freezed == offerTypeArabicName
            ? _value.offerTypeArabicName
            : offerTypeArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        offerTypeName: freezed == offerTypeName
            ? _value.offerTypeName
            : offerTypeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialOfferResponseImpl implements _SpecialOfferResponse {
  const _$SpecialOfferResponseImpl({
    @JsonKey(name: "prod_offer_type_id") this.prodOfferTypeId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "resource_id") this.resourceId,
    @JsonKey(name: "offer_type_img") this.offerTypeImg,
    @JsonKey(name: "offer_slug") this.offerSlug,
    @JsonKey(name: "offer_type_arabic_name") this.offerTypeArabicName,
    @JsonKey(name: "from_date") this.fromDate,
    @JsonKey(name: "to_date") this.toDate,
    @JsonKey(name: "offer_type_name") this.offerTypeName,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "store_name") this.storeName,
  });

  factory _$SpecialOfferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialOfferResponseImplFromJson(json);

  @override
  @JsonKey(name: "prod_offer_type_id")
  final int? prodOfferTypeId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "resource_id")
  final int? resourceId;
  @override
  @JsonKey(name: "offer_type_img")
  final String? offerTypeImg;
  @override
  @JsonKey(name: "offer_slug")
  final String? offerSlug;
  @override
  @JsonKey(name: "offer_type_arabic_name")
  final String? offerTypeArabicName;
  @override
  @JsonKey(name: "from_date")
  final dynamic fromDate;
  @override
  @JsonKey(name: "to_date")
  final dynamic toDate;
  @override
  @JsonKey(name: "offer_type_name")
  final String? offerTypeName;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;

  @override
  String toString() {
    return 'SpecialOfferResponse(prodOfferTypeId: $prodOfferTypeId, storeId: $storeId, resourceId: $resourceId, offerTypeImg: $offerTypeImg, offerSlug: $offerSlug, offerTypeArabicName: $offerTypeArabicName, fromDate: $fromDate, toDate: $toDate, offerTypeName: $offerTypeName, createdAt: $createdAt, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialOfferResponseImpl &&
            (identical(other.prodOfferTypeId, prodOfferTypeId) ||
                other.prodOfferTypeId == prodOfferTypeId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.offerTypeImg, offerTypeImg) ||
                other.offerTypeImg == offerTypeImg) &&
            (identical(other.offerSlug, offerSlug) ||
                other.offerSlug == offerSlug) &&
            (identical(other.offerTypeArabicName, offerTypeArabicName) ||
                other.offerTypeArabicName == offerTypeArabicName) &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate) &&
            (identical(other.offerTypeName, offerTypeName) ||
                other.offerTypeName == offerTypeName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prodOfferTypeId,
    storeId,
    resourceId,
    offerTypeImg,
    offerSlug,
    offerTypeArabicName,
    const DeepCollectionEquality().hash(fromDate),
    const DeepCollectionEquality().hash(toDate),
    offerTypeName,
    createdAt,
    storeName,
  );

  /// Create a copy of SpecialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialOfferResponseImplCopyWith<_$SpecialOfferResponseImpl>
  get copyWith =>
      __$$SpecialOfferResponseImplCopyWithImpl<_$SpecialOfferResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialOfferResponseImplToJson(this);
  }
}

abstract class _SpecialOfferResponse implements SpecialOfferResponse {
  const factory _SpecialOfferResponse({
    @JsonKey(name: "prod_offer_type_id") final int? prodOfferTypeId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "resource_id") final int? resourceId,
    @JsonKey(name: "offer_type_img") final String? offerTypeImg,
    @JsonKey(name: "offer_slug") final String? offerSlug,
    @JsonKey(name: "offer_type_arabic_name") final String? offerTypeArabicName,
    @JsonKey(name: "from_date") final dynamic fromDate,
    @JsonKey(name: "to_date") final dynamic toDate,
    @JsonKey(name: "offer_type_name") final String? offerTypeName,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "store_name") final String? storeName,
  }) = _$SpecialOfferResponseImpl;

  factory _SpecialOfferResponse.fromJson(Map<String, dynamic> json) =
      _$SpecialOfferResponseImpl.fromJson;

  @override
  @JsonKey(name: "prod_offer_type_id")
  int? get prodOfferTypeId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "resource_id")
  int? get resourceId;
  @override
  @JsonKey(name: "offer_type_img")
  String? get offerTypeImg;
  @override
  @JsonKey(name: "offer_slug")
  String? get offerSlug;
  @override
  @JsonKey(name: "offer_type_arabic_name")
  String? get offerTypeArabicName;
  @override
  @JsonKey(name: "from_date")
  dynamic get fromDate;
  @override
  @JsonKey(name: "to_date")
  dynamic get toDate;
  @override
  @JsonKey(name: "offer_type_name")
  String? get offerTypeName;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;

  /// Create a copy of SpecialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialOfferResponseImplCopyWith<_$SpecialOfferResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
