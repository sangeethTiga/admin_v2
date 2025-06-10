// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OptionResponse _$OptionResponseFromJson(Map<String, dynamic> json) {
  return _OptionResponse.fromJson(json);
}

/// @nodoc
mixin _$OptionResponse {
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "app_type_id")
  int? get appTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_id")
  int? get orderOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_name")
  String? get orderOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "slot_type_id")
  int? get slotTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_arabic")
  dynamic get orderOptionArabic => throw _privateConstructorUsedError;
  @JsonKey(name: "arabic_note")
  dynamic get arabicNote => throw _privateConstructorUsedError;

  /// Serializes this OptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionResponseCopyWith<OptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionResponseCopyWith<$Res> {
  factory $OptionResponseCopyWith(
    OptionResponse value,
    $Res Function(OptionResponse) then,
  ) = _$OptionResponseCopyWithImpl<$Res, OptionResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "slot_type_id") int? slotTypeId,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_option_arabic") dynamic orderOptionArabic,
    @JsonKey(name: "arabic_note") dynamic arabicNote,
  });
}

/// @nodoc
class _$OptionResponseCopyWithImpl<$Res, $Val extends OptionResponse>
    implements $OptionResponseCopyWith<$Res> {
  _$OptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? appTypeId = freezed,
    Object? orderOptionId = freezed,
    Object? orderOptionName = freezed,
    Object? slotTypeId = freezed,
    Object? note = freezed,
    Object? orderOptionArabic = freezed,
    Object? arabicNote = freezed,
  }) {
    return _then(
      _value.copyWith(
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            appTypeId: freezed == appTypeId
                ? _value.appTypeId
                : appTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderOptionId: freezed == orderOptionId
                ? _value.orderOptionId
                : orderOptionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderOptionName: freezed == orderOptionName
                ? _value.orderOptionName
                : orderOptionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            slotTypeId: freezed == slotTypeId
                ? _value.slotTypeId
                : slotTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderOptionArabic: freezed == orderOptionArabic
                ? _value.orderOptionArabic
                : orderOptionArabic // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            arabicNote: freezed == arabicNote
                ? _value.arabicNote
                : arabicNote // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OptionResponseImplCopyWith<$Res>
    implements $OptionResponseCopyWith<$Res> {
  factory _$$OptionResponseImplCopyWith(
    _$OptionResponseImpl value,
    $Res Function(_$OptionResponseImpl) then,
  ) = __$$OptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "order_option_name") String? orderOptionName,
    @JsonKey(name: "slot_type_id") int? slotTypeId,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "order_option_arabic") dynamic orderOptionArabic,
    @JsonKey(name: "arabic_note") dynamic arabicNote,
  });
}

/// @nodoc
class __$$OptionResponseImplCopyWithImpl<$Res>
    extends _$OptionResponseCopyWithImpl<$Res, _$OptionResponseImpl>
    implements _$$OptionResponseImplCopyWith<$Res> {
  __$$OptionResponseImplCopyWithImpl(
    _$OptionResponseImpl _value,
    $Res Function(_$OptionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? appTypeId = freezed,
    Object? orderOptionId = freezed,
    Object? orderOptionName = freezed,
    Object? slotTypeId = freezed,
    Object? note = freezed,
    Object? orderOptionArabic = freezed,
    Object? arabicNote = freezed,
  }) {
    return _then(
      _$OptionResponseImpl(
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        appTypeId: freezed == appTypeId
            ? _value.appTypeId
            : appTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderOptionId: freezed == orderOptionId
            ? _value.orderOptionId
            : orderOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderOptionName: freezed == orderOptionName
            ? _value.orderOptionName
            : orderOptionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        slotTypeId: freezed == slotTypeId
            ? _value.slotTypeId
            : slotTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderOptionArabic: freezed == orderOptionArabic
            ? _value.orderOptionArabic
            : orderOptionArabic // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        arabicNote: freezed == arabicNote
            ? _value.arabicNote
            : arabicNote // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionResponseImpl implements _OptionResponse {
  const _$OptionResponseImpl({
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "app_type_id") this.appTypeId,
    @JsonKey(name: "order_option_id") this.orderOptionId,
    @JsonKey(name: "order_option_name") this.orderOptionName,
    @JsonKey(name: "slot_type_id") this.slotTypeId,
    @JsonKey(name: "note") this.note,
    @JsonKey(name: "order_option_arabic") this.orderOptionArabic,
    @JsonKey(name: "arabic_note") this.arabicNote,
  });

  factory _$OptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionResponseImplFromJson(json);

  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "app_type_id")
  final int? appTypeId;
  @override
  @JsonKey(name: "order_option_id")
  final int? orderOptionId;
  @override
  @JsonKey(name: "order_option_name")
  final String? orderOptionName;
  @override
  @JsonKey(name: "slot_type_id")
  final int? slotTypeId;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "order_option_arabic")
  final dynamic orderOptionArabic;
  @override
  @JsonKey(name: "arabic_note")
  final dynamic arabicNote;

  @override
  String toString() {
    return 'OptionResponse(storeId: $storeId, appTypeId: $appTypeId, orderOptionId: $orderOptionId, orderOptionName: $orderOptionName, slotTypeId: $slotTypeId, note: $note, orderOptionArabic: $orderOptionArabic, arabicNote: $arabicNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionResponseImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.appTypeId, appTypeId) ||
                other.appTypeId == appTypeId) &&
            (identical(other.orderOptionId, orderOptionId) ||
                other.orderOptionId == orderOptionId) &&
            (identical(other.orderOptionName, orderOptionName) ||
                other.orderOptionName == orderOptionName) &&
            (identical(other.slotTypeId, slotTypeId) ||
                other.slotTypeId == slotTypeId) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(
              other.orderOptionArabic,
              orderOptionArabic,
            ) &&
            const DeepCollectionEquality().equals(
              other.arabicNote,
              arabicNote,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    storeId,
    appTypeId,
    orderOptionId,
    orderOptionName,
    slotTypeId,
    note,
    const DeepCollectionEquality().hash(orderOptionArabic),
    const DeepCollectionEquality().hash(arabicNote),
  );

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      __$$OptionResponseImplCopyWithImpl<_$OptionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionResponseImplToJson(this);
  }
}

abstract class _OptionResponse implements OptionResponse {
  const factory _OptionResponse({
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "app_type_id") final int? appTypeId,
    @JsonKey(name: "order_option_id") final int? orderOptionId,
    @JsonKey(name: "order_option_name") final String? orderOptionName,
    @JsonKey(name: "slot_type_id") final int? slotTypeId,
    @JsonKey(name: "note") final String? note,
    @JsonKey(name: "order_option_arabic") final dynamic orderOptionArabic,
    @JsonKey(name: "arabic_note") final dynamic arabicNote,
  }) = _$OptionResponseImpl;

  factory _OptionResponse.fromJson(Map<String, dynamic> json) =
      _$OptionResponseImpl.fromJson;

  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "app_type_id")
  int? get appTypeId;
  @override
  @JsonKey(name: "order_option_id")
  int? get orderOptionId;
  @override
  @JsonKey(name: "order_option_name")
  String? get orderOptionName;
  @override
  @JsonKey(name: "slot_type_id")
  int? get slotTypeId;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "order_option_arabic")
  dynamic get orderOptionArabic;
  @override
  @JsonKey(name: "arabic_note")
  dynamic get arabicNote;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
