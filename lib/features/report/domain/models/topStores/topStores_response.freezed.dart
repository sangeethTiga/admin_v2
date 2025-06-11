// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topStores_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TopstoresResponse _$TopstoresResponseFromJson(Map<String, dynamic> json) {
  return _TopstoresResponse.fromJson(json);
}

/// @nodoc
mixin _$TopstoresResponse {
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "totalorders")
  int? get totalorders => throw _privateConstructorUsedError;

  /// Serializes this TopstoresResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopstoresResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopstoresResponseCopyWith<TopstoresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopstoresResponseCopyWith<$Res> {
  factory $TopstoresResponseCopyWith(
    TopstoresResponse value,
    $Res Function(TopstoresResponse) then,
  ) = _$TopstoresResponseCopyWithImpl<$Res, TopstoresResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "totalorders") int? totalorders,
  });
}

/// @nodoc
class _$TopstoresResponseCopyWithImpl<$Res, $Val extends TopstoresResponse>
    implements $TopstoresResponseCopyWith<$Res> {
  _$TopstoresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopstoresResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? totalorders = freezed,
  }) {
    return _then(
      _value.copyWith(
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalorders: freezed == totalorders
                ? _value.totalorders
                : totalorders // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopstoresResponseImplCopyWith<$Res>
    implements $TopstoresResponseCopyWith<$Res> {
  factory _$$TopstoresResponseImplCopyWith(
    _$TopstoresResponseImpl value,
    $Res Function(_$TopstoresResponseImpl) then,
  ) = __$$TopstoresResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "totalorders") int? totalorders,
  });
}

/// @nodoc
class __$$TopstoresResponseImplCopyWithImpl<$Res>
    extends _$TopstoresResponseCopyWithImpl<$Res, _$TopstoresResponseImpl>
    implements _$$TopstoresResponseImplCopyWith<$Res> {
  __$$TopstoresResponseImplCopyWithImpl(
    _$TopstoresResponseImpl _value,
    $Res Function(_$TopstoresResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopstoresResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? totalorders = freezed,
  }) {
    return _then(
      _$TopstoresResponseImpl(
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalorders: freezed == totalorders
            ? _value.totalorders
            : totalorders // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopstoresResponseImpl implements _TopstoresResponse {
  const _$TopstoresResponseImpl({
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "totalorders") this.totalorders,
  });

  factory _$TopstoresResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopstoresResponseImplFromJson(json);

  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "totalorders")
  final int? totalorders;

  @override
  String toString() {
    return 'TopstoresResponse(storeId: $storeId, storeName: $storeName, totalorders: $totalorders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopstoresResponseImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.totalorders, totalorders) ||
                other.totalorders == totalorders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storeId, storeName, totalorders);

  /// Create a copy of TopstoresResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopstoresResponseImplCopyWith<_$TopstoresResponseImpl> get copyWith =>
      __$$TopstoresResponseImplCopyWithImpl<_$TopstoresResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TopstoresResponseImplToJson(this);
  }
}

abstract class _TopstoresResponse implements TopstoresResponse {
  const factory _TopstoresResponse({
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "totalorders") final int? totalorders,
  }) = _$TopstoresResponseImpl;

  factory _TopstoresResponse.fromJson(Map<String, dynamic> json) =
      _$TopstoresResponseImpl.fromJson;

  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "totalorders")
  int? get totalorders;

  /// Create a copy of TopstoresResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopstoresResponseImplCopyWith<_$TopstoresResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
