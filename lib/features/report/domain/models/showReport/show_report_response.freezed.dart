// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShowReportResponse _$ShowReportResponseFromJson(Map<String, dynamic> json) {
  return _ShowReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ShowReportResponse {
  @JsonKey(name: "total_sales")
  double? get totalSales => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_payable")
  double? get taxPayable => throw _privateConstructorUsedError;
  @JsonKey(name: "total_orders")
  int? get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted_order_date")
  String? get formattedOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "item_heading")
  String? get itemHeading => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "day_close_id")
  int? get dayCloseId => throw _privateConstructorUsedError;

  /// Serializes this ShowReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShowReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowReportResponseCopyWith<ShowReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowReportResponseCopyWith<$Res> {
  factory $ShowReportResponseCopyWith(
    ShowReportResponse value,
    $Res Function(ShowReportResponse) then,
  ) = _$ShowReportResponseCopyWithImpl<$Res, ShowReportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "total_sales") double? totalSales,
    @JsonKey(name: "tax_payable") double? taxPayable,
    @JsonKey(name: "total_orders") int? totalOrders,
    @JsonKey(name: "formatted_order_date") String? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  });
}

/// @nodoc
class _$ShowReportResponseCopyWithImpl<$Res, $Val extends ShowReportResponse>
    implements $ShowReportResponseCopyWith<$Res> {
  _$ShowReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSales = freezed,
    Object? taxPayable = freezed,
    Object? totalOrders = freezed,
    Object? formattedOrderDate = freezed,
    Object? itemHeading = freezed,
    Object? date = freezed,
    Object? dayCloseId = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalSales: freezed == totalSales
                ? _value.totalSales
                : totalSales // ignore: cast_nullable_to_non_nullable
                      as double?,
            taxPayable: freezed == taxPayable
                ? _value.taxPayable
                : taxPayable // ignore: cast_nullable_to_non_nullable
                      as double?,
            totalOrders: freezed == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                      as int?,
            formattedOrderDate: freezed == formattedOrderDate
                ? _value.formattedOrderDate
                : formattedOrderDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            itemHeading: freezed == itemHeading
                ? _value.itemHeading
                : itemHeading // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            dayCloseId: freezed == dayCloseId
                ? _value.dayCloseId
                : dayCloseId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShowReportResponseImplCopyWith<$Res>
    implements $ShowReportResponseCopyWith<$Res> {
  factory _$$ShowReportResponseImplCopyWith(
    _$ShowReportResponseImpl value,
    $Res Function(_$ShowReportResponseImpl) then,
  ) = __$$ShowReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "total_sales") double? totalSales,
    @JsonKey(name: "tax_payable") double? taxPayable,
    @JsonKey(name: "total_orders") int? totalOrders,
    @JsonKey(name: "formatted_order_date") String? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  });
}

/// @nodoc
class __$$ShowReportResponseImplCopyWithImpl<$Res>
    extends _$ShowReportResponseCopyWithImpl<$Res, _$ShowReportResponseImpl>
    implements _$$ShowReportResponseImplCopyWith<$Res> {
  __$$ShowReportResponseImplCopyWithImpl(
    _$ShowReportResponseImpl _value,
    $Res Function(_$ShowReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShowReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSales = freezed,
    Object? taxPayable = freezed,
    Object? totalOrders = freezed,
    Object? formattedOrderDate = freezed,
    Object? itemHeading = freezed,
    Object? date = freezed,
    Object? dayCloseId = freezed,
  }) {
    return _then(
      _$ShowReportResponseImpl(
        totalSales: freezed == totalSales
            ? _value.totalSales
            : totalSales // ignore: cast_nullable_to_non_nullable
                  as double?,
        taxPayable: freezed == taxPayable
            ? _value.taxPayable
            : taxPayable // ignore: cast_nullable_to_non_nullable
                  as double?,
        totalOrders: freezed == totalOrders
            ? _value.totalOrders
            : totalOrders // ignore: cast_nullable_to_non_nullable
                  as int?,
        formattedOrderDate: freezed == formattedOrderDate
            ? _value.formattedOrderDate
            : formattedOrderDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        itemHeading: freezed == itemHeading
            ? _value.itemHeading
            : itemHeading // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        dayCloseId: freezed == dayCloseId
            ? _value.dayCloseId
            : dayCloseId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowReportResponseImpl implements _ShowReportResponse {
  const _$ShowReportResponseImpl({
    @JsonKey(name: "total_sales") this.totalSales,
    @JsonKey(name: "tax_payable") this.taxPayable,
    @JsonKey(name: "total_orders") this.totalOrders,
    @JsonKey(name: "formatted_order_date") this.formattedOrderDate,
    @JsonKey(name: "item_heading") this.itemHeading,
    @JsonKey(name: "date") this.date,
    @JsonKey(name: "day_close_id") this.dayCloseId,
  });

  factory _$ShowReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "total_sales")
  final double? totalSales;
  @override
  @JsonKey(name: "tax_payable")
  final double? taxPayable;
  @override
  @JsonKey(name: "total_orders")
  final int? totalOrders;
  @override
  @JsonKey(name: "formatted_order_date")
  final String? formattedOrderDate;
  @override
  @JsonKey(name: "item_heading")
  final String? itemHeading;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "day_close_id")
  final int? dayCloseId;

  @override
  String toString() {
    return 'ShowReportResponse(totalSales: $totalSales, taxPayable: $taxPayable, totalOrders: $totalOrders, formattedOrderDate: $formattedOrderDate, itemHeading: $itemHeading, date: $date, dayCloseId: $dayCloseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowReportResponseImpl &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.taxPayable, taxPayable) ||
                other.taxPayable == taxPayable) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.formattedOrderDate, formattedOrderDate) ||
                other.formattedOrderDate == formattedOrderDate) &&
            (identical(other.itemHeading, itemHeading) ||
                other.itemHeading == itemHeading) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayCloseId, dayCloseId) ||
                other.dayCloseId == dayCloseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalSales,
    taxPayable,
    totalOrders,
    formattedOrderDate,
    itemHeading,
    date,
    dayCloseId,
  );

  /// Create a copy of ShowReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowReportResponseImplCopyWith<_$ShowReportResponseImpl> get copyWith =>
      __$$ShowReportResponseImplCopyWithImpl<_$ShowReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowReportResponseImplToJson(this);
  }
}

abstract class _ShowReportResponse implements ShowReportResponse {
  const factory _ShowReportResponse({
    @JsonKey(name: "total_sales") final double? totalSales,
    @JsonKey(name: "tax_payable") final double? taxPayable,
    @JsonKey(name: "total_orders") final int? totalOrders,
    @JsonKey(name: "formatted_order_date") final String? formattedOrderDate,
    @JsonKey(name: "item_heading") final String? itemHeading,
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "day_close_id") final int? dayCloseId,
  }) = _$ShowReportResponseImpl;

  factory _ShowReportResponse.fromJson(Map<String, dynamic> json) =
      _$ShowReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "total_sales")
  double? get totalSales;
  @override
  @JsonKey(name: "tax_payable")
  double? get taxPayable;
  @override
  @JsonKey(name: "total_orders")
  int? get totalOrders;
  @override
  @JsonKey(name: "formatted_order_date")
  String? get formattedOrderDate;
  @override
  @JsonKey(name: "item_heading")
  String? get itemHeading;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "day_close_id")
  int? get dayCloseId;

  /// Create a copy of ShowReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowReportResponseImplCopyWith<_$ShowReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
