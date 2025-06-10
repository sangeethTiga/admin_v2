// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_condition_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ItemConditionResponse _$ItemConditionResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ItemConditionResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemConditionResponse {
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_item_condition_name")
  String? get productItemConditionName => throw _privateConstructorUsedError;

  /// Serializes this ItemConditionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemConditionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemConditionResponseCopyWith<ItemConditionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemConditionResponseCopyWith<$Res> {
  factory $ItemConditionResponseCopyWith(
    ItemConditionResponse value,
    $Res Function(ItemConditionResponse) then,
  ) = _$ItemConditionResponseCopyWithImpl<$Res, ItemConditionResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  });
}

/// @nodoc
class _$ItemConditionResponseCopyWithImpl<
  $Res,
  $Val extends ItemConditionResponse
>
    implements $ItemConditionResponseCopyWith<$Res> {
  _$ItemConditionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemConditionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemConditionId = freezed,
    Object? productItemConditionName = freezed,
  }) {
    return _then(
      _value.copyWith(
            productItemConditionId: freezed == productItemConditionId
                ? _value.productItemConditionId
                : productItemConditionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productItemConditionName: freezed == productItemConditionName
                ? _value.productItemConditionName
                : productItemConditionName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemConditionResponseImplCopyWith<$Res>
    implements $ItemConditionResponseCopyWith<$Res> {
  factory _$$ItemConditionResponseImplCopyWith(
    _$ItemConditionResponseImpl value,
    $Res Function(_$ItemConditionResponseImpl) then,
  ) = __$$ItemConditionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "product_item_condition_id") int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    String? productItemConditionName,
  });
}

/// @nodoc
class __$$ItemConditionResponseImplCopyWithImpl<$Res>
    extends
        _$ItemConditionResponseCopyWithImpl<$Res, _$ItemConditionResponseImpl>
    implements _$$ItemConditionResponseImplCopyWith<$Res> {
  __$$ItemConditionResponseImplCopyWithImpl(
    _$ItemConditionResponseImpl _value,
    $Res Function(_$ItemConditionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemConditionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemConditionId = freezed,
    Object? productItemConditionName = freezed,
  }) {
    return _then(
      _$ItemConditionResponseImpl(
        productItemConditionId: freezed == productItemConditionId
            ? _value.productItemConditionId
            : productItemConditionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productItemConditionName: freezed == productItemConditionName
            ? _value.productItemConditionName
            : productItemConditionName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemConditionResponseImpl implements _ItemConditionResponse {
  const _$ItemConditionResponseImpl({
    @JsonKey(name: "product_item_condition_id") this.productItemConditionId,
    @JsonKey(name: "product_item_condition_name") this.productItemConditionName,
  });

  factory _$ItemConditionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemConditionResponseImplFromJson(json);

  @override
  @JsonKey(name: "product_item_condition_id")
  final int? productItemConditionId;
  @override
  @JsonKey(name: "product_item_condition_name")
  final String? productItemConditionName;

  @override
  String toString() {
    return 'ItemConditionResponse(productItemConditionId: $productItemConditionId, productItemConditionName: $productItemConditionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemConditionResponseImpl &&
            (identical(other.productItemConditionId, productItemConditionId) ||
                other.productItemConditionId == productItemConditionId) &&
            (identical(
                  other.productItemConditionName,
                  productItemConditionName,
                ) ||
                other.productItemConditionName == productItemConditionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productItemConditionId,
    productItemConditionName,
  );

  /// Create a copy of ItemConditionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemConditionResponseImplCopyWith<_$ItemConditionResponseImpl>
  get copyWith =>
      __$$ItemConditionResponseImplCopyWithImpl<_$ItemConditionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemConditionResponseImplToJson(this);
  }
}

abstract class _ItemConditionResponse implements ItemConditionResponse {
  const factory _ItemConditionResponse({
    @JsonKey(name: "product_item_condition_id")
    final int? productItemConditionId,
    @JsonKey(name: "product_item_condition_name")
    final String? productItemConditionName,
  }) = _$ItemConditionResponseImpl;

  factory _ItemConditionResponse.fromJson(Map<String, dynamic> json) =
      _$ItemConditionResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_item_condition_id")
  int? get productItemConditionId;
  @override
  @JsonKey(name: "product_item_condition_name")
  String? get productItemConditionName;

  /// Create a copy of ItemConditionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemConditionResponseImplCopyWith<_$ItemConditionResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
