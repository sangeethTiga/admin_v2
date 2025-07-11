// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesReportResponse _$SalesReportResponseFromJson(Map<String, dynamic> json) {
  return _SalesReportResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesReportResponse {
  @JsonKey(name: "total_sales", fromJson: parseDouble)
  double? get totalSales => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_payable", fromJson: parseDouble)
  double? get taxPayable => throw _privateConstructorUsedError;
  @JsonKey(name: "total_orders", fromJson: parseDouble)
  double? get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted_order_date")
  String? get formattedOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "item_heading")
  String? get itemHeading => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "day_close_id")
  int? get dayCloseId => throw _privateConstructorUsedError;

  /// Serializes this SalesReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesReportResponseCopyWith<SalesReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportResponseCopyWith<$Res> {
  factory $SalesReportResponseCopyWith(
    SalesReportResponse value,
    $Res Function(SalesReportResponse) then,
  ) = _$SalesReportResponseCopyWithImpl<$Res, SalesReportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "total_sales", fromJson: parseDouble) double? totalSales,
    @JsonKey(name: "tax_payable", fromJson: parseDouble) double? taxPayable,
    @JsonKey(name: "total_orders", fromJson: parseDouble) double? totalOrders,
    @JsonKey(name: "formatted_order_date") String? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  });
}

/// @nodoc
class _$SalesReportResponseCopyWithImpl<$Res, $Val extends SalesReportResponse>
    implements $SalesReportResponseCopyWith<$Res> {
  _$SalesReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesReportResponse
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
                      as double?,
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
                      as DateTime?,
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
abstract class _$$SalesReportResponseImplCopyWith<$Res>
    implements $SalesReportResponseCopyWith<$Res> {
  factory _$$SalesReportResponseImplCopyWith(
    _$SalesReportResponseImpl value,
    $Res Function(_$SalesReportResponseImpl) then,
  ) = __$$SalesReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "total_sales", fromJson: parseDouble) double? totalSales,
    @JsonKey(name: "tax_payable", fromJson: parseDouble) double? taxPayable,
    @JsonKey(name: "total_orders", fromJson: parseDouble) double? totalOrders,
    @JsonKey(name: "formatted_order_date") String? formattedOrderDate,
    @JsonKey(name: "item_heading") String? itemHeading,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "day_close_id") int? dayCloseId,
  });
}

/// @nodoc
class __$$SalesReportResponseImplCopyWithImpl<$Res>
    extends _$SalesReportResponseCopyWithImpl<$Res, _$SalesReportResponseImpl>
    implements _$$SalesReportResponseImplCopyWith<$Res> {
  __$$SalesReportResponseImplCopyWithImpl(
    _$SalesReportResponseImpl _value,
    $Res Function(_$SalesReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesReportResponse
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
      _$SalesReportResponseImpl(
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
                  as double?,
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
                  as DateTime?,
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
class _$SalesReportResponseImpl implements _SalesReportResponse {
  const _$SalesReportResponseImpl({
    @JsonKey(name: "total_sales", fromJson: parseDouble) this.totalSales,
    @JsonKey(name: "tax_payable", fromJson: parseDouble) this.taxPayable,
    @JsonKey(name: "total_orders", fromJson: parseDouble) this.totalOrders,
    @JsonKey(name: "formatted_order_date") this.formattedOrderDate,
    @JsonKey(name: "item_heading") this.itemHeading,
    @JsonKey(name: "date") this.date,
    @JsonKey(name: "day_close_id") this.dayCloseId,
  });

  factory _$SalesReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "total_sales", fromJson: parseDouble)
  final double? totalSales;
  @override
  @JsonKey(name: "tax_payable", fromJson: parseDouble)
  final double? taxPayable;
  @override
  @JsonKey(name: "total_orders", fromJson: parseDouble)
  final double? totalOrders;
  @override
  @JsonKey(name: "formatted_order_date")
  final String? formattedOrderDate;
  @override
  @JsonKey(name: "item_heading")
  final String? itemHeading;
  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "day_close_id")
  final int? dayCloseId;

  @override
  String toString() {
    return 'SalesReportResponse(totalSales: $totalSales, taxPayable: $taxPayable, totalOrders: $totalOrders, formattedOrderDate: $formattedOrderDate, itemHeading: $itemHeading, date: $date, dayCloseId: $dayCloseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesReportResponseImpl &&
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

  /// Create a copy of SalesReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesReportResponseImplCopyWith<_$SalesReportResponseImpl> get copyWith =>
      __$$SalesReportResponseImplCopyWithImpl<_$SalesReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesReportResponseImplToJson(this);
  }
}

abstract class _SalesReportResponse implements SalesReportResponse {
  const factory _SalesReportResponse({
    @JsonKey(name: "total_sales", fromJson: parseDouble)
    final double? totalSales,
    @JsonKey(name: "tax_payable", fromJson: parseDouble)
    final double? taxPayable,
    @JsonKey(name: "total_orders", fromJson: parseDouble)
    final double? totalOrders,
    @JsonKey(name: "formatted_order_date") final String? formattedOrderDate,
    @JsonKey(name: "item_heading") final String? itemHeading,
    @JsonKey(name: "date") final DateTime? date,
    @JsonKey(name: "day_close_id") final int? dayCloseId,
  }) = _$SalesReportResponseImpl;

  factory _SalesReportResponse.fromJson(Map<String, dynamic> json) =
      _$SalesReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "total_sales", fromJson: parseDouble)
  double? get totalSales;
  @override
  @JsonKey(name: "tax_payable", fromJson: parseDouble)
  double? get taxPayable;
  @override
  @JsonKey(name: "total_orders", fromJson: parseDouble)
  double? get totalOrders;
  @override
  @JsonKey(name: "formatted_order_date")
  String? get formattedOrderDate;
  @override
  @JsonKey(name: "item_heading")
  String? get itemHeading;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "day_close_id")
  int? get dayCloseId;

  /// Create a copy of SalesReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesReportResponseImplCopyWith<_$SalesReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
