// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UnitResponse _$UnitResponseFromJson(Map<String, dynamic> json) {
  return _UnitResponse.fromJson(json);
}

/// @nodoc
mixin _$UnitResponse {
  @JsonKey(name: "unit_id")
  int? get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_name")
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_arabic_name")
  dynamic get unitArabicName => throw _privateConstructorUsedError;

  /// Serializes this UnitResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitResponseCopyWith<UnitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitResponseCopyWith<$Res> {
  factory $UnitResponseCopyWith(
    UnitResponse value,
    $Res Function(UnitResponse) then,
  ) = _$UnitResponseCopyWithImpl<$Res, UnitResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "unit_id") int? unitId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "unit_name") String? unitName,
    @JsonKey(name: "unit_arabic_name") dynamic unitArabicName,
  });
}

/// @nodoc
class _$UnitResponseCopyWithImpl<$Res, $Val extends UnitResponse>
    implements $UnitResponseCopyWith<$Res> {
  _$UnitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = freezed,
    Object? storeId = freezed,
    Object? unitName = freezed,
    Object? unitArabicName = freezed,
  }) {
    return _then(
      _value.copyWith(
            unitId: freezed == unitId
                ? _value.unitId
                : unitId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            unitName: freezed == unitName
                ? _value.unitName
                : unitName // ignore: cast_nullable_to_non_nullable
                      as String?,
            unitArabicName: freezed == unitArabicName
                ? _value.unitArabicName
                : unitArabicName // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnitResponseImplCopyWith<$Res>
    implements $UnitResponseCopyWith<$Res> {
  factory _$$UnitResponseImplCopyWith(
    _$UnitResponseImpl value,
    $Res Function(_$UnitResponseImpl) then,
  ) = __$$UnitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "unit_id") int? unitId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "unit_name") String? unitName,
    @JsonKey(name: "unit_arabic_name") dynamic unitArabicName,
  });
}

/// @nodoc
class __$$UnitResponseImplCopyWithImpl<$Res>
    extends _$UnitResponseCopyWithImpl<$Res, _$UnitResponseImpl>
    implements _$$UnitResponseImplCopyWith<$Res> {
  __$$UnitResponseImplCopyWithImpl(
    _$UnitResponseImpl _value,
    $Res Function(_$UnitResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = freezed,
    Object? storeId = freezed,
    Object? unitName = freezed,
    Object? unitArabicName = freezed,
  }) {
    return _then(
      _$UnitResponseImpl(
        unitId: freezed == unitId
            ? _value.unitId
            : unitId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        unitName: freezed == unitName
            ? _value.unitName
            : unitName // ignore: cast_nullable_to_non_nullable
                  as String?,
        unitArabicName: freezed == unitArabicName
            ? _value.unitArabicName
            : unitArabicName // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitResponseImpl implements _UnitResponse {
  const _$UnitResponseImpl({
    @JsonKey(name: "unit_id") this.unitId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "unit_name") this.unitName,
    @JsonKey(name: "unit_arabic_name") this.unitArabicName,
  });

  factory _$UnitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitResponseImplFromJson(json);

  @override
  @JsonKey(name: "unit_id")
  final int? unitId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "unit_name")
  final String? unitName;
  @override
  @JsonKey(name: "unit_arabic_name")
  final dynamic unitArabicName;

  @override
  String toString() {
    return 'UnitResponse(unitId: $unitId, storeId: $storeId, unitName: $unitName, unitArabicName: $unitArabicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitResponseImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            const DeepCollectionEquality().equals(
              other.unitArabicName,
              unitArabicName,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    unitId,
    storeId,
    unitName,
    const DeepCollectionEquality().hash(unitArabicName),
  );

  /// Create a copy of UnitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitResponseImplCopyWith<_$UnitResponseImpl> get copyWith =>
      __$$UnitResponseImplCopyWithImpl<_$UnitResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitResponseImplToJson(this);
  }
}

abstract class _UnitResponse implements UnitResponse {
  const factory _UnitResponse({
    @JsonKey(name: "unit_id") final int? unitId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "unit_name") final String? unitName,
    @JsonKey(name: "unit_arabic_name") final dynamic unitArabicName,
  }) = _$UnitResponseImpl;

  factory _UnitResponse.fromJson(Map<String, dynamic> json) =
      _$UnitResponseImpl.fromJson;

  @override
  @JsonKey(name: "unit_id")
  int? get unitId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "unit_name")
  String? get unitName;
  @override
  @JsonKey(name: "unit_arabic_name")
  dynamic get unitArabicName;

  /// Create a copy of UnitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitResponseImplCopyWith<_$UnitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
