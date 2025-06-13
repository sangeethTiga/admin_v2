// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RevenueResponse _$RevenueResponseFromJson(Map<String, dynamic> json) {
  return _RevenueResponse.fromJson(json);
}

/// @nodoc
mixin _$RevenueResponse {
  @JsonKey(name: "monthname")
  String? get monthname => throw _privateConstructorUsedError;
  @JsonKey(name: "income")
  int? get income => throw _privateConstructorUsedError;
  @JsonKey(name: "expense")
  int? get expense => throw _privateConstructorUsedError;

  /// Serializes this RevenueResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevenueResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueResponseCopyWith<RevenueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueResponseCopyWith<$Res> {
  factory $RevenueResponseCopyWith(
    RevenueResponse value,
    $Res Function(RevenueResponse) then,
  ) = _$RevenueResponseCopyWithImpl<$Res, RevenueResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "monthname") String? monthname,
    @JsonKey(name: "income") int? income,
    @JsonKey(name: "expense") int? expense,
  });
}

/// @nodoc
class _$RevenueResponseCopyWithImpl<$Res, $Val extends RevenueResponse>
    implements $RevenueResponseCopyWith<$Res> {
  _$RevenueResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevenueResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthname = freezed,
    Object? income = freezed,
    Object? expense = freezed,
  }) {
    return _then(
      _value.copyWith(
            monthname: freezed == monthname
                ? _value.monthname
                : monthname // ignore: cast_nullable_to_non_nullable
                      as String?,
            income: freezed == income
                ? _value.income
                : income // ignore: cast_nullable_to_non_nullable
                      as int?,
            expense: freezed == expense
                ? _value.expense
                : expense // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RevenueResponseImplCopyWith<$Res>
    implements $RevenueResponseCopyWith<$Res> {
  factory _$$RevenueResponseImplCopyWith(
    _$RevenueResponseImpl value,
    $Res Function(_$RevenueResponseImpl) then,
  ) = __$$RevenueResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "monthname") String? monthname,
    @JsonKey(name: "income") int? income,
    @JsonKey(name: "expense") int? expense,
  });
}

/// @nodoc
class __$$RevenueResponseImplCopyWithImpl<$Res>
    extends _$RevenueResponseCopyWithImpl<$Res, _$RevenueResponseImpl>
    implements _$$RevenueResponseImplCopyWith<$Res> {
  __$$RevenueResponseImplCopyWithImpl(
    _$RevenueResponseImpl _value,
    $Res Function(_$RevenueResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RevenueResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthname = freezed,
    Object? income = freezed,
    Object? expense = freezed,
  }) {
    return _then(
      _$RevenueResponseImpl(
        monthname: freezed == monthname
            ? _value.monthname
            : monthname // ignore: cast_nullable_to_non_nullable
                  as String?,
        income: freezed == income
            ? _value.income
            : income // ignore: cast_nullable_to_non_nullable
                  as int?,
        expense: freezed == expense
            ? _value.expense
            : expense // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueResponseImpl implements _RevenueResponse {
  const _$RevenueResponseImpl({
    @JsonKey(name: "monthname") this.monthname,
    @JsonKey(name: "income") this.income,
    @JsonKey(name: "expense") this.expense,
  });

  factory _$RevenueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueResponseImplFromJson(json);

  @override
  @JsonKey(name: "monthname")
  final String? monthname;
  @override
  @JsonKey(name: "income")
  final int? income;
  @override
  @JsonKey(name: "expense")
  final int? expense;

  @override
  String toString() {
    return 'RevenueResponse(monthname: $monthname, income: $income, expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueResponseImpl &&
            (identical(other.monthname, monthname) ||
                other.monthname == monthname) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, monthname, income, expense);

  /// Create a copy of RevenueResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueResponseImplCopyWith<_$RevenueResponseImpl> get copyWith =>
      __$$RevenueResponseImplCopyWithImpl<_$RevenueResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueResponseImplToJson(this);
  }
}

abstract class _RevenueResponse implements RevenueResponse {
  const factory _RevenueResponse({
    @JsonKey(name: "monthname") final String? monthname,
    @JsonKey(name: "income") final int? income,
    @JsonKey(name: "expense") final int? expense,
  }) = _$RevenueResponseImpl;

  factory _RevenueResponse.fromJson(Map<String, dynamic> json) =
      _$RevenueResponseImpl.fromJson;

  @override
  @JsonKey(name: "monthname")
  String? get monthname;
  @override
  @JsonKey(name: "income")
  int? get income;
  @override
  @JsonKey(name: "expense")
  int? get expense;

  /// Create a copy of RevenueResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueResponseImplCopyWith<_$RevenueResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
