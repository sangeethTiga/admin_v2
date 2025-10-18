// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationsRequest _$NotificationsRequestFromJson(Map<String, dynamic> json) {
  return _NotificationsRequest.fromJson(json);
}

/// @nodoc
mixin _$NotificationsRequest {
  @JsonKey(name: "device_fcm_token")
  String? get deviceFcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_device_id")
  String? get uniqueDeviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "app_type_id")
  int? get appTypeId => throw _privateConstructorUsedError; //customerId =>companyUsersId//
  @JsonKey(name: "customer_id")
  int? get customerId => throw _privateConstructorUsedError;

  /// Serializes this NotificationsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsRequestCopyWith<NotificationsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsRequestCopyWith<$Res> {
  factory $NotificationsRequestCopyWith(
    NotificationsRequest value,
    $Res Function(NotificationsRequest) then,
  ) = _$NotificationsRequestCopyWithImpl<$Res, NotificationsRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "device_fcm_token") String? deviceFcmToken,
    @JsonKey(name: "unique_device_id") String? uniqueDeviceId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "customer_id") int? customerId,
  });
}

/// @nodoc
class _$NotificationsRequestCopyWithImpl<
  $Res,
  $Val extends NotificationsRequest
>
    implements $NotificationsRequestCopyWith<$Res> {
  _$NotificationsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceFcmToken = freezed,
    Object? uniqueDeviceId = freezed,
    Object? appTypeId = freezed,
    Object? customerId = freezed,
  }) {
    return _then(
      _value.copyWith(
            deviceFcmToken: freezed == deviceFcmToken
                ? _value.deviceFcmToken
                : deviceFcmToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            uniqueDeviceId: freezed == uniqueDeviceId
                ? _value.uniqueDeviceId
                : uniqueDeviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            appTypeId: freezed == appTypeId
                ? _value.appTypeId
                : appTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            customerId: freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationsRequestImplCopyWith<$Res>
    implements $NotificationsRequestCopyWith<$Res> {
  factory _$$NotificationsRequestImplCopyWith(
    _$NotificationsRequestImpl value,
    $Res Function(_$NotificationsRequestImpl) then,
  ) = __$$NotificationsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "device_fcm_token") String? deviceFcmToken,
    @JsonKey(name: "unique_device_id") String? uniqueDeviceId,
    @JsonKey(name: "app_type_id") int? appTypeId,
    @JsonKey(name: "customer_id") int? customerId,
  });
}

/// @nodoc
class __$$NotificationsRequestImplCopyWithImpl<$Res>
    extends _$NotificationsRequestCopyWithImpl<$Res, _$NotificationsRequestImpl>
    implements _$$NotificationsRequestImplCopyWith<$Res> {
  __$$NotificationsRequestImplCopyWithImpl(
    _$NotificationsRequestImpl _value,
    $Res Function(_$NotificationsRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceFcmToken = freezed,
    Object? uniqueDeviceId = freezed,
    Object? appTypeId = freezed,
    Object? customerId = freezed,
  }) {
    return _then(
      _$NotificationsRequestImpl(
        deviceFcmToken: freezed == deviceFcmToken
            ? _value.deviceFcmToken
            : deviceFcmToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        uniqueDeviceId: freezed == uniqueDeviceId
            ? _value.uniqueDeviceId
            : uniqueDeviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        appTypeId: freezed == appTypeId
            ? _value.appTypeId
            : appTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        customerId: freezed == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsRequestImpl implements _NotificationsRequest {
  const _$NotificationsRequestImpl({
    @JsonKey(name: "device_fcm_token") this.deviceFcmToken,
    @JsonKey(name: "unique_device_id") this.uniqueDeviceId,
    @JsonKey(name: "app_type_id") this.appTypeId,
    @JsonKey(name: "customer_id") this.customerId,
  });

  factory _$NotificationsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsRequestImplFromJson(json);

  @override
  @JsonKey(name: "device_fcm_token")
  final String? deviceFcmToken;
  @override
  @JsonKey(name: "unique_device_id")
  final String? uniqueDeviceId;
  @override
  @JsonKey(name: "app_type_id")
  final int? appTypeId;
  //customerId =>companyUsersId//
  @override
  @JsonKey(name: "customer_id")
  final int? customerId;

  @override
  String toString() {
    return 'NotificationsRequest(deviceFcmToken: $deviceFcmToken, uniqueDeviceId: $uniqueDeviceId, appTypeId: $appTypeId, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsRequestImpl &&
            (identical(other.deviceFcmToken, deviceFcmToken) ||
                other.deviceFcmToken == deviceFcmToken) &&
            (identical(other.uniqueDeviceId, uniqueDeviceId) ||
                other.uniqueDeviceId == uniqueDeviceId) &&
            (identical(other.appTypeId, appTypeId) ||
                other.appTypeId == appTypeId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceFcmToken,
    uniqueDeviceId,
    appTypeId,
    customerId,
  );

  /// Create a copy of NotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsRequestImplCopyWith<_$NotificationsRequestImpl>
  get copyWith =>
      __$$NotificationsRequestImplCopyWithImpl<_$NotificationsRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsRequestImplToJson(this);
  }
}

abstract class _NotificationsRequest implements NotificationsRequest {
  const factory _NotificationsRequest({
    @JsonKey(name: "device_fcm_token") final String? deviceFcmToken,
    @JsonKey(name: "unique_device_id") final String? uniqueDeviceId,
    @JsonKey(name: "app_type_id") final int? appTypeId,
    @JsonKey(name: "customer_id") final int? customerId,
  }) = _$NotificationsRequestImpl;

  factory _NotificationsRequest.fromJson(Map<String, dynamic> json) =
      _$NotificationsRequestImpl.fromJson;

  @override
  @JsonKey(name: "device_fcm_token")
  String? get deviceFcmToken;
  @override
  @JsonKey(name: "unique_device_id")
  String? get uniqueDeviceId;
  @override
  @JsonKey(name: "app_type_id")
  int? get appTypeId; //customerId =>companyUsersId//
  @override
  @JsonKey(name: "customer_id")
  int? get customerId;

  /// Create a copy of NotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsRequestImplCopyWith<_$NotificationsRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
