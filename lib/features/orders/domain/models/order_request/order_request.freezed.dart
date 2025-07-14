// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) {
  return _OrderRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderRequest {
  @JsonKey(name: "from_date")
  String? get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "to_date")
  String? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_id")
  dynamic get filterId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status_id")
  List<int>? get orderStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "page_first_result")
  int? get pageFirstResult => throw _privateConstructorUsedError;
  @JsonKey(name: "result_per_page")
  int? get resultPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_id")
  int? get payMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter_id")
  int? get waiterId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "kiosk_id")
  int? get kioskId => throw _privateConstructorUsedError;
  @JsonKey(name: "shift_id")
  int? get shiftId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_option_id")
  int? get orderOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_id")
  int? get cashierId => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_type_id")
  int? get referenceTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "from_time")
  String? get fromTime => throw _privateConstructorUsedError;
  @JsonKey(name: "to_time")
  String? get toTime => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this OrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRequestCopyWith<OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestCopyWith<$Res> {
  factory $OrderRequestCopyWith(
    OrderRequest value,
    $Res Function(OrderRequest) then,
  ) = _$OrderRequestCopyWithImpl<$Res, OrderRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "from_date") String? fromDate,
    @JsonKey(name: "to_date") String? toDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "filter_id") dynamic filterId,
    @JsonKey(name: "order_status_id") List<int>? orderStatusId,
    @JsonKey(name: "page_first_result") int? pageFirstResult,
    @JsonKey(name: "result_per_page") int? resultPerPage,
    @JsonKey(name: "pay_method_id") int? payMethodId,
    @JsonKey(name: "waiter_id") int? waiterId,
    @JsonKey(name: "payment_status_id") int? paymentStatusId,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "shift_id") int? shiftId,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "cashier_id") int? cashierId,
    @JsonKey(name: "reference_type_id") int? referenceTypeId,
    @JsonKey(name: "from_time") String? fromTime,
    @JsonKey(name: "to_time") String? toTime,
    @JsonKey(name: "version") String? version,
  });
}

/// @nodoc
class _$OrderRequestCopyWithImpl<$Res, $Val extends OrderRequest>
    implements $OrderRequestCopyWith<$Res> {
  _$OrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? storeId = freezed,
    Object? filterId = freezed,
    Object? orderStatusId = freezed,
    Object? pageFirstResult = freezed,
    Object? resultPerPage = freezed,
    Object? payMethodId = freezed,
    Object? waiterId = freezed,
    Object? paymentStatusId = freezed,
    Object? kioskId = freezed,
    Object? shiftId = freezed,
    Object? deliveryPartnerId = freezed,
    Object? orderOptionId = freezed,
    Object? cashierId = freezed,
    Object? referenceTypeId = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _value.copyWith(
            fromDate: freezed == fromDate
                ? _value.fromDate
                : fromDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            toDate: freezed == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            filterId: freezed == filterId
                ? _value.filterId
                : filterId // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            orderStatusId: freezed == orderStatusId
                ? _value.orderStatusId
                : orderStatusId // ignore: cast_nullable_to_non_nullable
                      as List<int>?,
            pageFirstResult: freezed == pageFirstResult
                ? _value.pageFirstResult
                : pageFirstResult // ignore: cast_nullable_to_non_nullable
                      as int?,
            resultPerPage: freezed == resultPerPage
                ? _value.resultPerPage
                : resultPerPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            payMethodId: freezed == payMethodId
                ? _value.payMethodId
                : payMethodId // ignore: cast_nullable_to_non_nullable
                      as int?,
            waiterId: freezed == waiterId
                ? _value.waiterId
                : waiterId // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentStatusId: freezed == paymentStatusId
                ? _value.paymentStatusId
                : paymentStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            kioskId: freezed == kioskId
                ? _value.kioskId
                : kioskId // ignore: cast_nullable_to_non_nullable
                      as int?,
            shiftId: freezed == shiftId
                ? _value.shiftId
                : shiftId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveryPartnerId: freezed == deliveryPartnerId
                ? _value.deliveryPartnerId
                : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderOptionId: freezed == orderOptionId
                ? _value.orderOptionId
                : orderOptionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            cashierId: freezed == cashierId
                ? _value.cashierId
                : cashierId // ignore: cast_nullable_to_non_nullable
                      as int?,
            referenceTypeId: freezed == referenceTypeId
                ? _value.referenceTypeId
                : referenceTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            fromTime: freezed == fromTime
                ? _value.fromTime
                : fromTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            toTime: freezed == toTime
                ? _value.toTime
                : toTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderRequestImplCopyWith<$Res>
    implements $OrderRequestCopyWith<$Res> {
  factory _$$OrderRequestImplCopyWith(
    _$OrderRequestImpl value,
    $Res Function(_$OrderRequestImpl) then,
  ) = __$$OrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "from_date") String? fromDate,
    @JsonKey(name: "to_date") String? toDate,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "filter_id") dynamic filterId,
    @JsonKey(name: "order_status_id") List<int>? orderStatusId,
    @JsonKey(name: "page_first_result") int? pageFirstResult,
    @JsonKey(name: "result_per_page") int? resultPerPage,
    @JsonKey(name: "pay_method_id") int? payMethodId,
    @JsonKey(name: "waiter_id") int? waiterId,
    @JsonKey(name: "payment_status_id") int? paymentStatusId,
    @JsonKey(name: "kiosk_id") int? kioskId,
    @JsonKey(name: "shift_id") int? shiftId,
    @JsonKey(name: "delivery_partner_id") int? deliveryPartnerId,
    @JsonKey(name: "order_option_id") int? orderOptionId,
    @JsonKey(name: "cashier_id") int? cashierId,
    @JsonKey(name: "reference_type_id") int? referenceTypeId,
    @JsonKey(name: "from_time") String? fromTime,
    @JsonKey(name: "to_time") String? toTime,
    @JsonKey(name: "version") String? version,
  });
}

/// @nodoc
class __$$OrderRequestImplCopyWithImpl<$Res>
    extends _$OrderRequestCopyWithImpl<$Res, _$OrderRequestImpl>
    implements _$$OrderRequestImplCopyWith<$Res> {
  __$$OrderRequestImplCopyWithImpl(
    _$OrderRequestImpl _value,
    $Res Function(_$OrderRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? storeId = freezed,
    Object? filterId = freezed,
    Object? orderStatusId = freezed,
    Object? pageFirstResult = freezed,
    Object? resultPerPage = freezed,
    Object? payMethodId = freezed,
    Object? waiterId = freezed,
    Object? paymentStatusId = freezed,
    Object? kioskId = freezed,
    Object? shiftId = freezed,
    Object? deliveryPartnerId = freezed,
    Object? orderOptionId = freezed,
    Object? cashierId = freezed,
    Object? referenceTypeId = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _$OrderRequestImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        filterId: freezed == filterId
            ? _value.filterId
            : filterId // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        orderStatusId: freezed == orderStatusId
            ? _value._orderStatusId
            : orderStatusId // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        pageFirstResult: freezed == pageFirstResult
            ? _value.pageFirstResult
            : pageFirstResult // ignore: cast_nullable_to_non_nullable
                  as int?,
        resultPerPage: freezed == resultPerPage
            ? _value.resultPerPage
            : resultPerPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        payMethodId: freezed == payMethodId
            ? _value.payMethodId
            : payMethodId // ignore: cast_nullable_to_non_nullable
                  as int?,
        waiterId: freezed == waiterId
            ? _value.waiterId
            : waiterId // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentStatusId: freezed == paymentStatusId
            ? _value.paymentStatusId
            : paymentStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        kioskId: freezed == kioskId
            ? _value.kioskId
            : kioskId // ignore: cast_nullable_to_non_nullable
                  as int?,
        shiftId: freezed == shiftId
            ? _value.shiftId
            : shiftId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveryPartnerId: freezed == deliveryPartnerId
            ? _value.deliveryPartnerId
            : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderOptionId: freezed == orderOptionId
            ? _value.orderOptionId
            : orderOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        cashierId: freezed == cashierId
            ? _value.cashierId
            : cashierId // ignore: cast_nullable_to_non_nullable
                  as int?,
        referenceTypeId: freezed == referenceTypeId
            ? _value.referenceTypeId
            : referenceTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        fromTime: freezed == fromTime
            ? _value.fromTime
            : fromTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        toTime: freezed == toTime
            ? _value.toTime
            : toTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRequestImpl implements _OrderRequest {
  const _$OrderRequestImpl({
    @JsonKey(name: "from_date") this.fromDate,
    @JsonKey(name: "to_date") this.toDate,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "filter_id") this.filterId,
    @JsonKey(name: "order_status_id") final List<int>? orderStatusId,
    @JsonKey(name: "page_first_result") this.pageFirstResult,
    @JsonKey(name: "result_per_page") this.resultPerPage,
    @JsonKey(name: "pay_method_id") this.payMethodId,
    @JsonKey(name: "waiter_id") this.waiterId,
    @JsonKey(name: "payment_status_id") this.paymentStatusId,
    @JsonKey(name: "kiosk_id") this.kioskId,
    @JsonKey(name: "shift_id") this.shiftId,
    @JsonKey(name: "delivery_partner_id") this.deliveryPartnerId,
    @JsonKey(name: "order_option_id") this.orderOptionId,
    @JsonKey(name: "cashier_id") this.cashierId,
    @JsonKey(name: "reference_type_id") this.referenceTypeId,
    @JsonKey(name: "from_time") this.fromTime,
    @JsonKey(name: "to_time") this.toTime,
    @JsonKey(name: "version") this.version,
  }) : _orderStatusId = orderStatusId;

  factory _$OrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRequestImplFromJson(json);

  @override
  @JsonKey(name: "from_date")
  final String? fromDate;
  @override
  @JsonKey(name: "to_date")
  final String? toDate;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "filter_id")
  final dynamic filterId;
  final List<int>? _orderStatusId;
  @override
  @JsonKey(name: "order_status_id")
  List<int>? get orderStatusId {
    final value = _orderStatusId;
    if (value == null) return null;
    if (_orderStatusId is EqualUnmodifiableListView) return _orderStatusId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "page_first_result")
  final int? pageFirstResult;
  @override
  @JsonKey(name: "result_per_page")
  final int? resultPerPage;
  @override
  @JsonKey(name: "pay_method_id")
  final int? payMethodId;
  @override
  @JsonKey(name: "waiter_id")
  final int? waiterId;
  @override
  @JsonKey(name: "payment_status_id")
  final int? paymentStatusId;
  @override
  @JsonKey(name: "kiosk_id")
  final int? kioskId;
  @override
  @JsonKey(name: "shift_id")
  final int? shiftId;
  @override
  @JsonKey(name: "delivery_partner_id")
  final int? deliveryPartnerId;
  @override
  @JsonKey(name: "order_option_id")
  final int? orderOptionId;
  @override
  @JsonKey(name: "cashier_id")
  final int? cashierId;
  @override
  @JsonKey(name: "reference_type_id")
  final int? referenceTypeId;
  @override
  @JsonKey(name: "from_time")
  final String? fromTime;
  @override
  @JsonKey(name: "to_time")
  final String? toTime;
  @override
  @JsonKey(name: "version")
  final String? version;

  @override
  String toString() {
    return 'OrderRequest(fromDate: $fromDate, toDate: $toDate, storeId: $storeId, filterId: $filterId, orderStatusId: $orderStatusId, pageFirstResult: $pageFirstResult, resultPerPage: $resultPerPage, payMethodId: $payMethodId, waiterId: $waiterId, paymentStatusId: $paymentStatusId, kioskId: $kioskId, shiftId: $shiftId, deliveryPartnerId: $deliveryPartnerId, orderOptionId: $orderOptionId, cashierId: $cashierId, referenceTypeId: $referenceTypeId, fromTime: $fromTime, toTime: $toTime, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRequestImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            const DeepCollectionEquality().equals(other.filterId, filterId) &&
            const DeepCollectionEquality().equals(
              other._orderStatusId,
              _orderStatusId,
            ) &&
            (identical(other.pageFirstResult, pageFirstResult) ||
                other.pageFirstResult == pageFirstResult) &&
            (identical(other.resultPerPage, resultPerPage) ||
                other.resultPerPage == resultPerPage) &&
            (identical(other.payMethodId, payMethodId) ||
                other.payMethodId == payMethodId) &&
            (identical(other.waiterId, waiterId) ||
                other.waiterId == waiterId) &&
            (identical(other.paymentStatusId, paymentStatusId) ||
                other.paymentStatusId == paymentStatusId) &&
            (identical(other.kioskId, kioskId) || other.kioskId == kioskId) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId) &&
            (identical(other.orderOptionId, orderOptionId) ||
                other.orderOptionId == orderOptionId) &&
            (identical(other.cashierId, cashierId) ||
                other.cashierId == cashierId) &&
            (identical(other.referenceTypeId, referenceTypeId) ||
                other.referenceTypeId == referenceTypeId) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    fromDate,
    toDate,
    storeId,
    const DeepCollectionEquality().hash(filterId),
    const DeepCollectionEquality().hash(_orderStatusId),
    pageFirstResult,
    resultPerPage,
    payMethodId,
    waiterId,
    paymentStatusId,
    kioskId,
    shiftId,
    deliveryPartnerId,
    orderOptionId,
    cashierId,
    referenceTypeId,
    fromTime,
    toTime,
    version,
  ]);

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRequestImplCopyWith<_$OrderRequestImpl> get copyWith =>
      __$$OrderRequestImplCopyWithImpl<_$OrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRequestImplToJson(this);
  }
}

abstract class _OrderRequest implements OrderRequest {
  const factory _OrderRequest({
    @JsonKey(name: "from_date") final String? fromDate,
    @JsonKey(name: "to_date") final String? toDate,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "filter_id") final dynamic filterId,
    @JsonKey(name: "order_status_id") final List<int>? orderStatusId,
    @JsonKey(name: "page_first_result") final int? pageFirstResult,
    @JsonKey(name: "result_per_page") final int? resultPerPage,
    @JsonKey(name: "pay_method_id") final int? payMethodId,
    @JsonKey(name: "waiter_id") final int? waiterId,
    @JsonKey(name: "payment_status_id") final int? paymentStatusId,
    @JsonKey(name: "kiosk_id") final int? kioskId,
    @JsonKey(name: "shift_id") final int? shiftId,
    @JsonKey(name: "delivery_partner_id") final int? deliveryPartnerId,
    @JsonKey(name: "order_option_id") final int? orderOptionId,
    @JsonKey(name: "cashier_id") final int? cashierId,
    @JsonKey(name: "reference_type_id") final int? referenceTypeId,
    @JsonKey(name: "from_time") final String? fromTime,
    @JsonKey(name: "to_time") final String? toTime,
    @JsonKey(name: "version") final String? version,
  }) = _$OrderRequestImpl;

  factory _OrderRequest.fromJson(Map<String, dynamic> json) =
      _$OrderRequestImpl.fromJson;

  @override
  @JsonKey(name: "from_date")
  String? get fromDate;
  @override
  @JsonKey(name: "to_date")
  String? get toDate;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "filter_id")
  dynamic get filterId;
  @override
  @JsonKey(name: "order_status_id")
  List<int>? get orderStatusId;
  @override
  @JsonKey(name: "page_first_result")
  int? get pageFirstResult;
  @override
  @JsonKey(name: "result_per_page")
  int? get resultPerPage;
  @override
  @JsonKey(name: "pay_method_id")
  int? get payMethodId;
  @override
  @JsonKey(name: "waiter_id")
  int? get waiterId;
  @override
  @JsonKey(name: "payment_status_id")
  int? get paymentStatusId;
  @override
  @JsonKey(name: "kiosk_id")
  int? get kioskId;
  @override
  @JsonKey(name: "shift_id")
  int? get shiftId;
  @override
  @JsonKey(name: "delivery_partner_id")
  int? get deliveryPartnerId;
  @override
  @JsonKey(name: "order_option_id")
  int? get orderOptionId;
  @override
  @JsonKey(name: "cashier_id")
  int? get cashierId;
  @override
  @JsonKey(name: "reference_type_id")
  int? get referenceTypeId;
  @override
  @JsonKey(name: "from_time")
  String? get fromTime;
  @override
  @JsonKey(name: "to_time")
  String? get toTime;
  @override
  @JsonKey(name: "version")
  String? get version;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRequestImplCopyWith<_$OrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
