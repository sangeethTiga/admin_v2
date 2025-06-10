// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  @JsonKey(name: "details")
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: "subcategories1")
  List<Subcategories1>? get subcategories1 =>
      throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
    CategoryResponse value,
    $Res Function(CategoryResponse) then,
  ) = _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories1") List<Subcategories1>? subcategories1,
  });

  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? details = freezed, Object? subcategories1 = freezed}) {
    return _then(
      _value.copyWith(
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as Details?,
            subcategories1: freezed == subcategories1
                ? _value.subcategories1
                : subcategories1 // ignore: cast_nullable_to_non_nullable
                      as List<Subcategories1>?,
          )
          as $Val,
    );
  }

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(
    _$CategoryResponseImpl value,
    $Res Function(_$CategoryResponseImpl) then,
  ) = __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories1") List<Subcategories1>? subcategories1,
  });

  @override
  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(
    _$CategoryResponseImpl _value,
    $Res Function(_$CategoryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? details = freezed, Object? subcategories1 = freezed}) {
    return _then(
      _$CategoryResponseImpl(
        details: freezed == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as Details?,
        subcategories1: freezed == subcategories1
            ? _value._subcategories1
            : subcategories1 // ignore: cast_nullable_to_non_nullable
                  as List<Subcategories1>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  const _$CategoryResponseImpl({
    @JsonKey(name: "details") this.details,
    @JsonKey(name: "subcategories1") final List<Subcategories1>? subcategories1,
  }) : _subcategories1 = subcategories1;

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: "details")
  final Details? details;
  final List<Subcategories1>? _subcategories1;
  @override
  @JsonKey(name: "subcategories1")
  List<Subcategories1>? get subcategories1 {
    final value = _subcategories1;
    if (value == null) return null;
    if (_subcategories1 is EqualUnmodifiableListView) return _subcategories1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryResponse(details: $details, subcategories1: $subcategories1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(
              other._subcategories1,
              _subcategories1,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    details,
    const DeepCollectionEquality().hash(_subcategories1),
  );

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(this);
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse({
    @JsonKey(name: "details") final Details? details,
    @JsonKey(name: "subcategories1") final List<Subcategories1>? subcategories1,
  }) = _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: "details")
  Details? get details;
  @override
  @JsonKey(name: "subcategories1")
  List<Subcategories1>? get subcategories1;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_arabic_name")
  String? get categoryArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_slug")
  String? get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_category_id")
  int? get parentCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_small_name")
  String? get resourceSmallName => throw _privateConstructorUsedError;
  @JsonKey(name: "checked")
  int? get checked => throw _privateConstructorUsedError;

  /// Serializes this Details to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call({
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "parent_category_id") int? parentCategoryId,
    @JsonKey(name: "resource_small_name") String? resourceSmallName,
    @JsonKey(name: "checked") int? checked,
  });
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categoryArabicName = freezed,
    Object? categorySlug = freezed,
    Object? parentCategoryId = freezed,
    Object? resourceSmallName = freezed,
    Object? checked = freezed,
  }) {
    return _then(
      _value.copyWith(
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryArabicName: freezed == categoryArabicName
                ? _value.categoryArabicName
                : categoryArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categorySlug: freezed == categorySlug
                ? _value.categorySlug
                : categorySlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentCategoryId: freezed == parentCategoryId
                ? _value.parentCategoryId
                : parentCategoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            resourceSmallName: freezed == resourceSmallName
                ? _value.resourceSmallName
                : resourceSmallName // ignore: cast_nullable_to_non_nullable
                      as String?,
            checked: freezed == checked
                ? _value.checked
                : checked // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
    _$DetailsImpl value,
    $Res Function(_$DetailsImpl) then,
  ) = __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "category_arabic_name") String? categoryArabicName,
    @JsonKey(name: "category_slug") String? categorySlug,
    @JsonKey(name: "parent_category_id") int? parentCategoryId,
    @JsonKey(name: "resource_small_name") String? resourceSmallName,
    @JsonKey(name: "checked") int? checked,
  });
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
    _$DetailsImpl _value,
    $Res Function(_$DetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categoryArabicName = freezed,
    Object? categorySlug = freezed,
    Object? parentCategoryId = freezed,
    Object? resourceSmallName = freezed,
    Object? checked = freezed,
  }) {
    return _then(
      _$DetailsImpl(
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryArabicName: freezed == categoryArabicName
            ? _value.categoryArabicName
            : categoryArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categorySlug: freezed == categorySlug
            ? _value.categorySlug
            : categorySlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentCategoryId: freezed == parentCategoryId
            ? _value.parentCategoryId
            : parentCategoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        resourceSmallName: freezed == resourceSmallName
            ? _value.resourceSmallName
            : resourceSmallName // ignore: cast_nullable_to_non_nullable
                  as String?,
        checked: freezed == checked
            ? _value.checked
            : checked // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl({
    @JsonKey(name: "category_id") this.categoryId,
    @JsonKey(name: "category_name") this.categoryName,
    @JsonKey(name: "category_arabic_name") this.categoryArabicName,
    @JsonKey(name: "category_slug") this.categorySlug,
    @JsonKey(name: "parent_category_id") this.parentCategoryId,
    @JsonKey(name: "resource_small_name") this.resourceSmallName,
    @JsonKey(name: "checked") this.checked,
  });

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "category_arabic_name")
  final String? categoryArabicName;
  @override
  @JsonKey(name: "category_slug")
  final String? categorySlug;
  @override
  @JsonKey(name: "parent_category_id")
  final int? parentCategoryId;
  @override
  @JsonKey(name: "resource_small_name")
  final String? resourceSmallName;
  @override
  @JsonKey(name: "checked")
  final int? checked;

  @override
  String toString() {
    return 'Details(categoryId: $categoryId, categoryName: $categoryName, categoryArabicName: $categoryArabicName, categorySlug: $categorySlug, parentCategoryId: $parentCategoryId, resourceSmallName: $resourceSmallName, checked: $checked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryArabicName, categoryArabicName) ||
                other.categoryArabicName == categoryArabicName) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.resourceSmallName, resourceSmallName) ||
                other.resourceSmallName == resourceSmallName) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    categoryName,
    categoryArabicName,
    categorySlug,
    parentCategoryId,
    resourceSmallName,
    checked,
  );

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(this);
  }
}

abstract class _Details implements Details {
  const factory _Details({
    @JsonKey(name: "category_id") final int? categoryId,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "category_arabic_name") final String? categoryArabicName,
    @JsonKey(name: "category_slug") final String? categorySlug,
    @JsonKey(name: "parent_category_id") final int? parentCategoryId,
    @JsonKey(name: "resource_small_name") final String? resourceSmallName,
    @JsonKey(name: "checked") final int? checked,
  }) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "category_arabic_name")
  String? get categoryArabicName;
  @override
  @JsonKey(name: "category_slug")
  String? get categorySlug;
  @override
  @JsonKey(name: "parent_category_id")
  int? get parentCategoryId;
  @override
  @JsonKey(name: "resource_small_name")
  String? get resourceSmallName;
  @override
  @JsonKey(name: "checked")
  int? get checked;

  /// Create a copy of Details
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategories1 _$Subcategories1FromJson(Map<String, dynamic> json) {
  return _Subcategories1.fromJson(json);
}

/// @nodoc
mixin _$Subcategories1 {
  @JsonKey(name: "details")
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: "subcategories2")
  List<dynamic>? get subcategories2 => throw _privateConstructorUsedError;

  /// Serializes this Subcategories1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Subcategories1CopyWith<Subcategories1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Subcategories1CopyWith<$Res> {
  factory $Subcategories1CopyWith(
    Subcategories1 value,
    $Res Function(Subcategories1) then,
  ) = _$Subcategories1CopyWithImpl<$Res, Subcategories1>;
  @useResult
  $Res call({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories2") List<dynamic>? subcategories2,
  });

  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$Subcategories1CopyWithImpl<$Res, $Val extends Subcategories1>
    implements $Subcategories1CopyWith<$Res> {
  _$Subcategories1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? details = freezed, Object? subcategories2 = freezed}) {
    return _then(
      _value.copyWith(
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as Details?,
            subcategories2: freezed == subcategories2
                ? _value.subcategories2
                : subcategories2 // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Subcategories1ImplCopyWith<$Res>
    implements $Subcategories1CopyWith<$Res> {
  factory _$$Subcategories1ImplCopyWith(
    _$Subcategories1Impl value,
    $Res Function(_$Subcategories1Impl) then,
  ) = __$$Subcategories1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "subcategories2") List<dynamic>? subcategories2,
  });

  @override
  $DetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$Subcategories1ImplCopyWithImpl<$Res>
    extends _$Subcategories1CopyWithImpl<$Res, _$Subcategories1Impl>
    implements _$$Subcategories1ImplCopyWith<$Res> {
  __$$Subcategories1ImplCopyWithImpl(
    _$Subcategories1Impl _value,
    $Res Function(_$Subcategories1Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? details = freezed, Object? subcategories2 = freezed}) {
    return _then(
      _$Subcategories1Impl(
        details: freezed == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as Details?,
        subcategories2: freezed == subcategories2
            ? _value._subcategories2
            : subcategories2 // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Subcategories1Impl implements _Subcategories1 {
  const _$Subcategories1Impl({
    @JsonKey(name: "details") this.details,
    @JsonKey(name: "subcategories2") final List<dynamic>? subcategories2,
  }) : _subcategories2 = subcategories2;

  factory _$Subcategories1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Subcategories1ImplFromJson(json);

  @override
  @JsonKey(name: "details")
  final Details? details;
  final List<dynamic>? _subcategories2;
  @override
  @JsonKey(name: "subcategories2")
  List<dynamic>? get subcategories2 {
    final value = _subcategories2;
    if (value == null) return null;
    if (_subcategories2 is EqualUnmodifiableListView) return _subcategories2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Subcategories1(details: $details, subcategories2: $subcategories2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Subcategories1Impl &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(
              other._subcategories2,
              _subcategories2,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    details,
    const DeepCollectionEquality().hash(_subcategories2),
  );

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Subcategories1ImplCopyWith<_$Subcategories1Impl> get copyWith =>
      __$$Subcategories1ImplCopyWithImpl<_$Subcategories1Impl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$Subcategories1ImplToJson(this);
  }
}

abstract class _Subcategories1 implements Subcategories1 {
  const factory _Subcategories1({
    @JsonKey(name: "details") final Details? details,
    @JsonKey(name: "subcategories2") final List<dynamic>? subcategories2,
  }) = _$Subcategories1Impl;

  factory _Subcategories1.fromJson(Map<String, dynamic> json) =
      _$Subcategories1Impl.fromJson;

  @override
  @JsonKey(name: "details")
  Details? get details;
  @override
  @JsonKey(name: "subcategories2")
  List<dynamic>? get subcategories2;

  /// Create a copy of Subcategories1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Subcategories1ImplCopyWith<_$Subcategories1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
