// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offertype_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OffertypeResponse _$OffertypeResponseFromJson(Map<String, dynamic> json) {
  return _OffertypeResponse.fromJson(json);
}

/// @nodoc
mixin _$OffertypeResponse {
  @JsonKey(name: "offer_type_id")
  int? get offerTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type")
  String? get offerType => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_id")
  int? get resourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_type_img")
  dynamic get offerTypeImg => throw _privateConstructorUsedError;

  /// Serializes this OffertypeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffertypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffertypeResponseCopyWith<OffertypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffertypeResponseCopyWith<$Res> {
  factory $OffertypeResponseCopyWith(
    OffertypeResponse value,
    $Res Function(OffertypeResponse) then,
  ) = _$OffertypeResponseCopyWithImpl<$Res, OffertypeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "offer_type_id") int? offerTypeId,
    @JsonKey(name: "offer_type") String? offerType,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "offer_type_img") dynamic offerTypeImg,
  });
}

/// @nodoc
class _$OffertypeResponseCopyWithImpl<$Res, $Val extends OffertypeResponse>
    implements $OffertypeResponseCopyWith<$Res> {
  _$OffertypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffertypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerTypeId = freezed,
    Object? offerType = freezed,
    Object? resourceId = freezed,
    Object? offerTypeImg = freezed,
  }) {
    return _then(
      _value.copyWith(
            offerTypeId: freezed == offerTypeId
                ? _value.offerTypeId
                : offerTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerType: freezed == offerType
                ? _value.offerType
                : offerType // ignore: cast_nullable_to_non_nullable
                      as String?,
            resourceId: freezed == resourceId
                ? _value.resourceId
                : resourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            offerTypeImg: freezed == offerTypeImg
                ? _value.offerTypeImg
                : offerTypeImg // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OffertypeResponseImplCopyWith<$Res>
    implements $OffertypeResponseCopyWith<$Res> {
  factory _$$OffertypeResponseImplCopyWith(
    _$OffertypeResponseImpl value,
    $Res Function(_$OffertypeResponseImpl) then,
  ) = __$$OffertypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "offer_type_id") int? offerTypeId,
    @JsonKey(name: "offer_type") String? offerType,
    @JsonKey(name: "resource_id") int? resourceId,
    @JsonKey(name: "offer_type_img") dynamic offerTypeImg,
  });
}

/// @nodoc
class __$$OffertypeResponseImplCopyWithImpl<$Res>
    extends _$OffertypeResponseCopyWithImpl<$Res, _$OffertypeResponseImpl>
    implements _$$OffertypeResponseImplCopyWith<$Res> {
  __$$OffertypeResponseImplCopyWithImpl(
    _$OffertypeResponseImpl _value,
    $Res Function(_$OffertypeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OffertypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerTypeId = freezed,
    Object? offerType = freezed,
    Object? resourceId = freezed,
    Object? offerTypeImg = freezed,
  }) {
    return _then(
      _$OffertypeResponseImpl(
        offerTypeId: freezed == offerTypeId
            ? _value.offerTypeId
            : offerTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerType: freezed == offerType
            ? _value.offerType
            : offerType // ignore: cast_nullable_to_non_nullable
                  as String?,
        resourceId: freezed == resourceId
            ? _value.resourceId
            : resourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        offerTypeImg: freezed == offerTypeImg
            ? _value.offerTypeImg
            : offerTypeImg // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OffertypeResponseImpl implements _OffertypeResponse {
  const _$OffertypeResponseImpl({
    @JsonKey(name: "offer_type_id") this.offerTypeId,
    @JsonKey(name: "offer_type") this.offerType,
    @JsonKey(name: "resource_id") this.resourceId,
    @JsonKey(name: "offer_type_img") this.offerTypeImg,
  });

  factory _$OffertypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffertypeResponseImplFromJson(json);

  @override
  @JsonKey(name: "offer_type_id")
  final int? offerTypeId;
  @override
  @JsonKey(name: "offer_type")
  final String? offerType;
  @override
  @JsonKey(name: "resource_id")
  final int? resourceId;
  @override
  @JsonKey(name: "offer_type_img")
  final dynamic offerTypeImg;

  @override
  String toString() {
    return 'OffertypeResponse(offerTypeId: $offerTypeId, offerType: $offerType, resourceId: $resourceId, offerTypeImg: $offerTypeImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffertypeResponseImpl &&
            (identical(other.offerTypeId, offerTypeId) ||
                other.offerTypeId == offerTypeId) &&
            (identical(other.offerType, offerType) ||
                other.offerType == offerType) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            const DeepCollectionEquality().equals(
              other.offerTypeImg,
              offerTypeImg,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    offerTypeId,
    offerType,
    resourceId,
    const DeepCollectionEquality().hash(offerTypeImg),
  );

  /// Create a copy of OffertypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffertypeResponseImplCopyWith<_$OffertypeResponseImpl> get copyWith =>
      __$$OffertypeResponseImplCopyWithImpl<_$OffertypeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OffertypeResponseImplToJson(this);
  }
}

abstract class _OffertypeResponse implements OffertypeResponse {
  const factory _OffertypeResponse({
    @JsonKey(name: "offer_type_id") final int? offerTypeId,
    @JsonKey(name: "offer_type") final String? offerType,
    @JsonKey(name: "resource_id") final int? resourceId,
    @JsonKey(name: "offer_type_img") final dynamic offerTypeImg,
  }) = _$OffertypeResponseImpl;

  factory _OffertypeResponse.fromJson(Map<String, dynamic> json) =
      _$OffertypeResponseImpl.fromJson;

  @override
  @JsonKey(name: "offer_type_id")
  int? get offerTypeId;
  @override
  @JsonKey(name: "offer_type")
  String? get offerType;
  @override
  @JsonKey(name: "resource_id")
  int? get resourceId;
  @override
  @JsonKey(name: "offer_type_img")
  dynamic get offerTypeImg;

  /// Create a copy of OffertypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffertypeResponseImplCopyWith<_$OffertypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
